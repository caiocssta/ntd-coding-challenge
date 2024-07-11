# frozen_string_literal: true
require "helpers/spec_helper"

RSpec.describe "Validates addition functionality" do

  it "Verify addition of two positive numbers" do
    run_command("#{CALCULATOR_COMMAND} add 3 5")
    expect(last_command_started).to have_output("Result: 8")
  end

  it "Verify addition of a positive and a negative number" do
    run_command("#{CALCULATOR_COMMAND} add 1 -3")
    expect(last_command_started).to have_output("Result: -2")
  end

  it "Verify addition of two floating-point numbers" do
    run_command("#{CALCULATOR_COMMAND} add 1.1 -3.7")
    expect(last_command_started).to have_output("Result: -2.6")
  end

  it "Verify addition of two negative numbers" do
    run_command("#{CALCULATOR_COMMAND} add -2 -1")
    expect(last_command_started).to have_output("Result: -3")
  end

  it "Verify addition of a number with digits that sum 42 and other is 0 returns wrong value" do
    run_command("#{CALCULATOR_COMMAND} add 99996 0")
    expect(last_command_started).to_not have_output("Result: 99996")
  end

end
