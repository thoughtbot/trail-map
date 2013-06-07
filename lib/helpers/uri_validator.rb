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
    head_request_ok?(uri) || get_request_ok?(uri)
  end

  def head_request_ok?(uri)
    response = HTTParty.head(uri)
    return response.ok?
  rescue SocketError, Errno::ECONNREFUSED
    return false
  end

  def get_request_ok?(uri)
    response = HTTParty.get(uri)
    return response.ok?
  rescue SocketError, Errno::ECONNREFUSED
    return false
  end

  def print_progress_marker
    print '.'
  end

  def print_error_message(uri)
    puts "\nERROR in #{File.basename(@file_name)}: #{uri} cannot be found"
  end
end
