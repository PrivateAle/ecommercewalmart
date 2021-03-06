#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'../../','lib'))

require 'capybara/cucumber'
require "selenium-webdriver"
require "capybara-webkit"
require "gherkin"
#require 'rspec-expectations'
#require 'page-object'
#require 'require_all'
#require 'data_magic'
#require 'fig_newton'

#require_all 'lib'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 60

#World(PageObject::PageFactory)

  Capybara::Webkit.configure do |config|
    config.allow_url("https://www2.walmart.com.br/checkout/content/carrinho")
    config.block_unknown_urls
    config.allow_url "http://www.walmart.com.br/busca"
    config.allow_url "http://www.walmart.com.br"
  end
