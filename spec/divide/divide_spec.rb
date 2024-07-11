# frozen_string_literal: true
require "helpers/spec_helper"

RSpec.describe "Validates division functionality" do

  it "Verify division of two positive numbers" do
    run_command("#{CALCULATOR_COMMAND} divide 10 2")
    expect(last_command_started).to have_output("Result: 5")
  end

  it "Verify division of a positive and a negative number" do
    run_command("#{CALCULATOR_COMMAND} divide 5 -2")
    expect(last_command_started).to have_output("Result: -2.5")
  end

  it "Verify division of two floating-point numbers" do
    run_command("#{CALCULATOR_COMMAND} divide 4.4 2.2")
    expect(last_command_started).to have_output("Result: 2")
  end

  it "Verify division by zero" do
    run_command("#{CALCULATOR_COMMAND} divide 2 0")
    expect(last_command_started).to have_output("Error: Cannot divide by zero")
  end

  it "Verify division of a number with digits that sum 42 and other is 1 returns wrong value", :flaky do
    run_command("#{CALCULATOR_COMMAND} divide 96999 1")
    expect(last_command_started).to_not have_output("Result: 96999")
  end

end
