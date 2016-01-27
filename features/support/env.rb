require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'cucumber/formatter/unicode'
require 'cucumber/api_steps'
require 'pry'
require 'rack'
require 'rack/test'
require 'sinatra'
#require 'spec_helper'

# Define here all Test URLs
$mainPageUrl = "https://www.walmart.com.br"
$mainAPIUrl = "http://jsonplaceholder.typicode.com"

#------------ Config of Selenium WebDriver, ChromeDriver and Poltergeist --------------------

if ENV['IN_BROWSER']
  # On demand: non-headless tests via Selenium/WebDriver
  # To run the scenarios in browser (default: Firefox), use the following command line:
  # RUN_IN_BROWSER=true bundle exec cucumber
  # or (to have a pause of 1 second between each step):
  # RUN_IN_BROWSER=true PAUSE=1 bundle exec cucumber

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.default_driver = :selenium

  AfterStep do
    sleep (ENV['PAUSE'] || 0).to_i
  end
else
  # DEFAULT: headless tests with poltergeist/PhantomJS
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
    app,
    window_size: [1280, 1024]#,
    #debug:       true
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
end

Capybara.default_selector = :css
World(RSpec::Matchers)

def app
  Capybara.app = Sinatra::Application.new
end