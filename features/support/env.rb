require 'capybara/cucumber'
require 'selenium-webdriver'



Selenium::WebDriver.logger.level = :error
Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 5
end