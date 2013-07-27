require 'spec_helper'
require 'rspec/mocks/standalone'

describe TrailRunner, '#run' do
  it 'outputs a starting message' do
    $stdout = io = StringIO.new

    TrailRunner.new.run('JSON validation') {}

    expect(io.string.split("\n")[0]).to match %r{Starting JSON validation}
  end

  it 'yields each file name' do
    runner = TrailRunner.new
    files = %w(rails.json vim.json)
    runner.stub(:json_files) { files }
    yielded_files = []

    runner.run('Yield test') { |f| yielded_files << f }

    expect(yielded_files).to eq files
  end

  it 'prints a closing puts' do
    $stdout = io = StringIO.new

    TrailRunner.new.run('Closing test') {}

    expect(io.string[-1, 1]).to eq "\n"
  end
end
