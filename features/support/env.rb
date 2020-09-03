require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://www.verity.com.br/"
    config.default_max_wait_time = 10
end



