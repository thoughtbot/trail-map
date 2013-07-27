require 'webmock/rspec'

script_directory = File.dirname(__FILE__)
helper_files = script_directory + '/../lib/helpers/*.rb'

Dir[helper_files].each do |f|
  require File.expand_path(f)
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.fail_fast = true
  config.order = 'random'
end
