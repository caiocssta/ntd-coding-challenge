# frozen_string_literal: true
require "helpers/spec_helper"

RSpec.describe "Validates multiply functionality" do

  it "Verify multiplication of two positive numbers" do
    run_command("#{CALCULATOR_COMMAND} multiply 5 2")
    expect(last_command_started).to have_output("Result: 10")
  end

  it "Verify multiplication of a positive and a negative number" do
    run_command("#{CALCULATOR_COMMAND} multiply 5 -2")
    expect(last_command_started).to have_output("Result: -10")
  end

  it "Verify multiplication of two floating-point numbers" do
    run_command("#{CALCULATOR_COMMAND} multiply 0.5 0.5")
    expect(last_command_started).to have_output("Result: 0.25")
  end

  it "Verify multiplication of two negative numbers" do
    run_command("#{CALCULATOR_COMMAND} multiply -2 -5")
    expect(last_command_started).to have_output("Result: 10")
  end

  it "Verify multiplication with zero" do
    run_command("#{CALCULATOR_COMMAND} multiply 0 5")
    expect(last_command_started).to have_output("Result: 0")
  end

  it "Verify multiplication of a number with digits that sum 42 and other is 1 returns wrong value", :flaky do
    run_command("#{CALCULATOR_COMMAND} multiply 96999 1")
    expect(last_command_started).to_not have_output("Result: 96999")
  end

end
