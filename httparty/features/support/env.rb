#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'../../','lib'))

require 'capybara/cucumber'
require "selenium-webdriver"
require "capybara-webkit"
require "gherkin"
require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'rails'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'



Capybara.default_driver = :selenium
Capybara.default_wait_time = 60

#World(PageObject::PageFactory)

HTTParty::Request.configure { |config|
  config.allow_url("http://cep.correiocontrol.com.br/$CEP_A_SER_TESTADO.json ")
  config.block_unknown_urls
  config.allow_url("http://cep.correiocontrol.com.br/$01509001.json "
}
