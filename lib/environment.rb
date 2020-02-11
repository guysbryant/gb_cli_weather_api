require 'httparty'
require 'pry'
require "gb_cli_weather_api/version"
require "gb_cli_weather_api/cli"
require "gb_cli_weather_api/api_key"

module GbCliWeatherApi
  class Error < StandardError; end
end
