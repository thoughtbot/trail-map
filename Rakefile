require 'rake'
require 'bundler/setup'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :environment do
  script_directory = File.dirname(__FILE__)
  helper_files = script_directory + '/lib/helpers/*.rb'
  Dir[helper_files].each { |file| require File.expand_path(file) }
end

desc 'Run RSpec code examples and validations'
task :test => [:spec, :validate]

desc 'Run validations'
task :validate => %w(validate:json validate:uris)

namespace :validate do
  desc 'Run JSON validations'
  task :json => :environment do
    TrailRunner.new.run('JSON validation') { |file| JSONValidator.new(file).run }
  end

  desc 'Run URI validations'
  task :uris => :environment do
    TrailRunner.new.run('URI validation') { |file| URIValidator.new(file).run }
  end
end

task :default => :test
