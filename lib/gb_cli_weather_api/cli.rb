class GbCliWeatherApi::CLI

    def initialize
        GbCliWeatherApi::APIKEY.set_api_key
        puts GbCliWeatherApi::API.zip_code_weather
    end
end
