# frozen_string_literal: true
require 'rspec_junit_formatter'

RSpec.configure do |config|
  # Add JUnit formatter and displays in real time tests results in the CLI
  config.add_formatter('RspecJunitFormatter', 'report.xml')
  config.add_formatter('progress')
end
