require 'spec_helper'
require 'mocha/api'
require 'rspec/mocks/standalone'
require 'bourne'

describe TrailRunner, '#run' do
  it 'outputs a starting message' do
    $stdout = io = StringIO.new

    TrailRunner.new.run('JSON validation') {}

    io.string.split("\n")[0].should =~ /Starting JSON validation/
  end

  it 'yields each file name' do
    runner = TrailRunner.new
    files = %w(rails.json vim.json)
    runner.stubs(:json_files).returns(files)
    yielded_files = []

    runner.run('Yield test') { |f| yielded_files << f }

    yielded_files.should eq files
  end

  it 'prints a closing puts' do
    $stdout = io = StringIO.new

    TrailRunner.new.run('Closing test') {}

    output = io.string[-1, 1]
    output.should == "\n"
  end
end
