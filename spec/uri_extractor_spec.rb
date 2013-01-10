require 'spec_helper'

describe URIExtractor, '#each' do
  it 'yields each URI' do
    file_name = File.expand_path('../fixtures/valid.json', __FILE__)
    found_uris = []

    URIExtractor.new(file_name).each { |uri| found_uris << uri }

    expect(found_uris).to eq %w(
      http://amzn.to/the-linux-programming-interface
      http://en.wikipedia.org/wiki/Redirection_%28computing%29
    )
  end
end
