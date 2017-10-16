require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require	'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'faker'


Capybara.register_driver :selenium do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome('chromeOptions' => { 'args' =>['--start-maximized']})
    Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: capabilities)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

#variável global
$nome_tarefa = Faker::Name.name
