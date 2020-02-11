class GbCliWeatherApi::CLI
    include HTTParty
    base_uri "api.openweathermap.org/data/2.5/weather"
    @@api_key

    def initialize
        GbCliWeatherApi::APIKEY.set_api_key
    end

    def zip_code_weather
        self.class.get("?zip=29611,us&appid=#{GbCliWeatherApi::APIKEY.api_key}")
    end

end
