class GbCliWeatherApi::API
    include HTTParty
    base_uri "api.openweathermap.org/data/2.5/weather"
    @@api_key

    def self.zip_code_weather
        get("?zip=29611,us&appid=#{GbCliWeatherApi::APIKEY.api_key}")
    end
end