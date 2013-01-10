class JSONValidator
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
    begin
      JSON.parse(@contents)
      return true
    rescue Exception => e
      return false
    end
  end

  def print_progress_marker
    print '.'
  end

  def print_error_message
    puts "\nERROR: #{@file_name} is not valid JSON. Learn more:"
    puts "cat #{@file_name} | pbcopy; open http://jsonlint.com"
  end
end
