require "gb_cli_weather_api/version"
require "gb_cli_weather_api/cli"

module GbCliWeatherApi
  class Error < StandardError; end
  class Temperature
    def self.display
      "70"
    end
  end
end
