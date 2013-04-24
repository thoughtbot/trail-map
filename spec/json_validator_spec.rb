require 'spec_helper'

describe JSONValidator, '#run' do
  it 'returns true and outputs a dot if the JSON is valid' do
    $stdout = io = StringIO.new
    dir = File.dirname(__FILE__)
    file_name = File.open(dir + '/fixtures/valid.json')

    result = JSONValidator.new(file_name).run

    result.should be_true
    io.string.should eq '.'
  end


  it 'returns false and outputs an error if the JSON is not valid' do
    $stdout = io = StringIO.new
    dir = File.dirname(__FILE__)
    file_name = File.open(dir + '/fixtures/invalid.json')

    result = JSONValidator.new(file_name).run

    result.should be_false
    io.string.should =~ /ERROR/
  end

  it 'returns false and outputs an error if the JSON is non compliant' do
    $stdout = io = StringIO.new
    dir = File.dirname(__FILE__)
    file_name = File.open(dir + '/fixtures/non_compliant.json')

    result = JSONValidator.new(file_name).run

    result.should be_false
    io.string.should =~ /ERROR/
  end
end
