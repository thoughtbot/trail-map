#!/usr/bin/env ruby

script_directory = File.dirname(__FILE__)
helper_files = script_directory + '/helpers/*.rb'

Dir[helper_files].each { |file| require File.expand_path(file) }

TrailRunner.new.run
