script_directory = File.dirname(__FILE__)
helper_files = script_directory + '/../lib/helpers/*.rb'

Dir[helper_files].each do |f|
  require File.expand_path(f)
end

RSpec.configure do |config|
  config.mock_with :mocha
end
