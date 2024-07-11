# Rakefile
require 'rake'
require 'rspec/core/rake_task'
require 'open3'
require 'bundler/setup'

DOCKER_IMAGE = 'public.ecr.aws/l4q9w4c5/loanpro-calculator-cli:latest'

# Task to check for the Docker image
desc "Check if Docker image exists, pull if it doesn't"
task :check_docker_image do
  image_exists = false

  # List docker images
  command = "docker images -q #{DOCKER_IMAGE}"
  stdout, stderr, status = Open3.capture3(command)

  # Check if image exists
  image_exists = !stdout.strip.empty?

  unless image_exists
    puts "Docker image not found. Pulling #{DOCKER_IMAGE}"
    pull_command = "docker pull #{DOCKER_IMAGE}"
    system(pull_command)
  end
end

# Task to run the tests
RSpec::Core::RakeTask.new(:spec)

# Task to check for the Docker image and then run the tests
desc "Check for Docker image and run tests"
task test_and_report: [:check_docker_image, :spec]

# Set test_and_report as default task for Rake
task default: :test_and_report
