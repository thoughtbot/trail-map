require 'json'
require 'rubygems'

class TrailRunner
  def run(purpose, &block)
    print_starting_message(purpose)
    json_files.each(&block)
    print_closing_puts
  end

  private

  def print_starting_message(purpose)
    puts "Starting #{purpose}\n"
  end

  def json_files
    Dir["#{script_directory}/../../trails/*.json"]
  end

  def script_directory
    File.dirname(__FILE__)
  end

  def print_closing_puts
    puts
  end
end
