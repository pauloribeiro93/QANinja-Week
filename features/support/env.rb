require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require_relative "helpers"
require_relative "actions"

World(Helpers)
World(Actions)

Capybara.register_driver :chrome_custom do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "chromeOptions" => {
      # "args" => ["--chrome", "--disable-site-isolation-trials", "--disable-gpu"],
      "excludeSwitches" => ["enable-logging"],
    },
  )
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :desired_capabilities => caps)
end

Capybara.configure do |config|
  config.default_driver = :chrome_custom
  config.default_max_wait_time = 10
  config.app_host = "http://parodify.qaninja.com.br/"
end

# Capybara.configure do |config|
#   config.default_driver = :selenium_chrome
#   config.default_max_wait_time = 10 #Aumentar o tempo de busca para buscar um elemento
#   config.app_host = "http://parodify.qaninja.com.br/"
# end

# AllureCucumber.configure do |config|
#   config.results_directory = "/logs"
#   config.clean_results_directory = true
# end
