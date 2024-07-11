# frozen_string_literal: true
require "helpers/spec_helper"

RSpec.describe "Validates subtraction functionality" do

  it "Verify subtraction of two positive numbers" do
    run_command("#{CALCULATOR_COMMAND} subtract 10 5")
    expect(last_command_started).to have_output("Result: 5")
  end

  it "Verify subtraction resulting in a negative number" do
    run_command("#{CALCULATOR_COMMAND} subtract 10 15")
    expect(last_command_started).to have_output("Result: -5")
  end

  it "Verify subtraction of two floating-point numbers" do
    run_command("#{CALCULATOR_COMMAND} subtract 2.5 1.1")
    expect(last_command_started).to have_output("Result: 1.4")
  end

  it "Verify subtraction of two negative numbers" do
    run_command("#{CALCULATOR_COMMAND} subtract -2 -1")
    expect(last_command_started).to have_output("Result: -1")
  end

  it "Verify subtraction of a positive and a negative number" do
    run_command("#{CALCULATOR_COMMAND} subtract -2 5")
    expect(last_command_started).to have_output("Result: -7")
  end

  it "Verify subtraction of a number with digits that sum 42 and other is 0 returns wrong value", :flaky do
    run_command("#{CALCULATOR_COMMAND} subtract 0 79998")
    expect(last_command_started).to_not have_output("Result: -79998")
  end

end
