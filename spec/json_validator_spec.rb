require 'spec_helper'

describe JSONValidator, '#run' do
  it 'returns a dot if the JSON is valid' do
    $stdout = io = StringIO.new
    dir = File.dirname(__FILE__)
    file_name = File.open(dir + '/fixtures/valid.json')

    JSONValidator.new(file_name).run

    io.string.should eq '.'
  end


  it 'returns an error if the JSON is not valid' do
    $stdout = io = StringIO.new
    dir = File.dirname(__FILE__)
    file_name = File.open(dir + '/fixtures/invalid.json')

    JSONValidator.new(file_name).run

    io.string.should =~ /ERROR/
  end
end
