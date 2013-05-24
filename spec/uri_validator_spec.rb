require 'spec_helper'

describe URIValidator, '#run' do
  it 'outputs a dot for each valid URI' do
    stub_request(:head, 'http://example.org')
    stub_request(:head, 'http://example.com')
    file_name = 'good_json_file.json'
    URIExtractor.stubs(:new).with(file_name).returns %w(
      http://example.org
      http://example.com
    )
    $stdout = io = StringIO.new

    URIValidator.new(file_name).run

    io.string.should eq '..'
  end

  it 'outputs an error for each invalid URI' do
    stub_request(:head, 'http://bad.example.org').to_raise(SocketError)
    stub_request(:get, 'http://bad.example.org').to_raise(SocketError)
    stub_request(:head, 'http://thoughtbot.com/404').to_return(status: 404)
    stub_request(:get, 'http://thoughtbot.com/404').to_return(status: 404)
    stub_request(:head, 'http://dead.link.com').to_raise(Errno::ECONNREFUSED)
    stub_request(:get, 'http://dead.link.com').to_raise(Errno::ECONNREFUSED)
    file_name = 'path/to/bad_json_file.json'
    URIExtractor.stubs(:new).with(file_name).returns %w(
      http://bad.example.org
      http://thoughtbot.com/404
      http://dead.link.com
    )
    $stdout = io = StringIO.new

    URIValidator.new(file_name).run

    io.string.should =~ %r{ERROR in bad_json_file\.json: http://bad\.example\.org}
    io.string.should =~ %r{ERROR in bad_json_file\.json: http://thoughtbot\.com/404}
  end

  it 'retries with a GET request on a method not allowed error' do
    stub_request(:head, 'http://example.com').to_return(status: 405)
    stub_request(:get, 'http://example.com')
    file_name = 'rails.json'
    URIExtractor.stubs(:new).with(file_name).returns %w(http://example.com)
    $stdout = io = StringIO.new

    URIValidator.new(file_name).run

    WebMock.should have_requested(:head, 'http://example.com')
    WebMock.should have_requested(:get, 'http://example.com')
  end

  it 'retries with a GET request on an exception' do
    stub_request(:head, 'http://example.com').to_raise(SocketError)
    stub_request(:get, 'http://example.com')
    file_name = 'rails.json'
    URIExtractor.stubs(:new).with(file_name).returns %w(http://example.com)
    $stdout = io = StringIO.new

    URIValidator.new(file_name).run

    WebMock.should have_requested(:head, 'http://example.com')
    WebMock.should have_requested(:get, 'http://example.com')
  end
end
