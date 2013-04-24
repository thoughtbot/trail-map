require 'json-schema'

class JSONValidator
  SCHEMA = 'config/schema.json'

  def initialize(file_name)
    @file_name = file_name
    @contents = File.open(@file_name).read
  end

  def run
    check_json_validation
  end

  private

  def check_json_validation
    if valid_json?
      print_progress_marker
      return true
    else
      print_error_message
      return false
    end
  end

  def valid_json?
    @errors = JSON::Validator.fully_validate(SCHEMA, @contents)

    @errors == []
  end

  def print_progress_marker
    print '.'
  end

  def print_error_message
    puts "\nERROR: #{@file_name} is not valid JSON."
    puts @errors
  end
end
