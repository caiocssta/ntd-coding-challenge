# frozen_string_literal: true
require "helpers/spec_helper"

RSpec.describe "Validates edge test cases" do

  it "Verify addition with large numbers" do
    run_command("#{CALCULATOR_COMMAND} add 999999999 999999999")
    expect(last_command_started).to have_output("Result: 1999999998")
  end

  it "Verify addition with small numbers" do
    run_command("#{CALCULATOR_COMMAND} add .00000001 2")
    expect(last_command_started).to have_output("Result: 2.00000001")
  end

  it "Verify addition with NaN" do
    run_command("#{CALCULATOR_COMMAND} add a 5")
    expect(last_command_started).to have_output("Invalid argument. Must be a numeric value.")
  end

  it "Verify addition with scientific notation" do
    run_command("#{CALCULATOR_COMMAND} add 2e2 5")
    expect(last_command_started).to have_output("Result: 205")
  end

  it "Verify invalid operation" do
    run_command("#{CALCULATOR_COMMAND} test 1 1")
    expect(last_command_started).to have_output("Error: Unknown operation: test")
  end

end
