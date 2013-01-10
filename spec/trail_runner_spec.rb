require 'spec_helper'
require 'mocha/api'
require 'rspec/mocks/standalone'
require 'bourne'

describe TrailRunner, '#run' do
  it 'returns a starting message' do
    $stdout = io = StringIO.new
    uri_validator_stub = stub('uri validator stub', :run)
    URIValidator.stubs(:new).returns(uri_validator_stub)

    TrailRunner.new.run

    io.string.split("\n")[0].should =~ /Starting/
  end

  it 'calls JSONValidator.new(file).run on each file' do
    validator_stub = stub('json validator stub', run: true)
    JSONValidator.stubs(:new).returns(validator_stub)

    uri_validator_stub = stub('uri validator stub', :run)
    URIValidator.stubs(:new).returns(uri_validator_stub)

    file_name = File.expand_path('../fixtures/valid.json', __FILE__)
    files = [file_name]
    runner = TrailRunner.new
    runner.stubs(:json_files).returns(files)

    runner.run

    JSONValidator.should have_received(:new)
    URIValidator.should have_received(:new)
  end

  it 'prints a closing puts' do
    $stdout = io = StringIO.new
    uri_validator_stub = stub('uri validator stub', :run)
    URIValidator.stubs(:new).returns(uri_validator_stub)

    TrailRunner.new.run

    output = io.string[-1, 1]
    output.should == "\n"
  end
end
