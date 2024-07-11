require "aruba/rspec"
require_relative "aruba_setup"
require_relative "junit_reporter"

RSpec.configure do |config|
  config.include Aruba::Api

  # Sets the command as a variable to be reused
  CALCULATOR_COMMAND = "docker run --rm public.ecr.aws/l4q9w4c5/loanpro-calculator-cli:latest"
end
