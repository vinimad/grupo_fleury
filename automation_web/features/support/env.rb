require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'report_builder'


Capybara.register_driver :selenium do |app|
  @profile = Selenium::WebDriver::Firefox::Profile.new
  @profile.native_events = true
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, browser: :chrome,
                                        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                                          'chromeOptions' => {
                                            'args' => ['--start-maximized']
                                          }
                                        ))
  elsif BROWSER.eql?('EdgeDriver')
    Capybara::Selenium::Driver.new(app, browser: :edge)

  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer,
                                        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.internet_explorer(
                                          'ignoreProtectedModeSettings' => true
                                        ))

  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  Capybara.ignore_hidden_elements = false
end
