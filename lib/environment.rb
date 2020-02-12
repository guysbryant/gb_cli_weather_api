require 'httparty'
require 'pry'
require "gb_cli_weather_api/version"
require "gb_cli_weather_api/cli"
require "gb_cli_weather_api/api_key"
require "gb_cli_weather_api/api"
require "gb_cli_weather_api/weather"

module GbCliWeatherApi
  class Error < StandardError; end
end
