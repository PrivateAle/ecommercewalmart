$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'../../','lib'))

require 'capybara/cucumber'
require "selenium-webdriver"
require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'data_magic'
require 'fig_newton'

require_all 'lib'

World(PageObject::PageFactory)
