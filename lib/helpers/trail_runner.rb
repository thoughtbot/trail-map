require 'json'
require 'rubygems'

class TrailRunner
  def run
    print_starting_message
    run_validations_on_json_files
    print_closing_puts
  end

  private

  def print_starting_message
    puts "Starting JSON validation\n"
  end

  def run_validations_on_json_files
    json_files.each do |file|
      JSONValidator.new(file).run && URIValidator.new(file).run
    end
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
