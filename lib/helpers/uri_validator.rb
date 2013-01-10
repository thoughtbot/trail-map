require 'httparty'

class URIValidator
  def initialize(file_name)
    @file_name = file_name
  end

  def run
    uris.each do |uri|
      if valid_uri?(uri)
        print_progress_marker
      else
        print_error_message(uri)
      end
    end
  end

  private

  def uris
    URIExtractor.new(@file_name)
  end

  def valid_uri?(uri)
    response = HTTParty.head(uri)
    return response.code == 200
  rescue SocketError
    return false
  end

  def print_progress_marker
    print '.'
  end

  def print_error_message(uri)
    puts "\nERROR in #{File.basename(@file_name)}: #{uri} cannot be found"
  end
end
