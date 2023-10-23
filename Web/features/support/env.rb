require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require 'pry'
require 'faker'
require 'securerandom'



Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://opensource-demo.orangehrmlive.com/'
  config.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize
end
