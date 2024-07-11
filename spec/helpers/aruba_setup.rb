require "rspec/retry"

RSpec.configure do |config|
  config.before(:each) do
    setup_aruba
  end

  # Retry flaky tests
  config.verbose_retry = true
  config.default_retry_count = 3

  # Retry only tests set as flaky
  config.around(:each, :flaky) do |example|
    example.run_with_retry retry: 3
  end
end
