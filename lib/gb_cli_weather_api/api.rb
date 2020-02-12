class GbCliWeatherApi::API
    include HTTParty
    base_uri "api.openweathermap.org/data/2.5/weather"

    def self.key_check
        get("?zip=#{29611},us&appid=#{GbCliWeatherApi::APIKEY.api_key}")["cod"]
    end
    def self.zip_code_weather(zipcode = 29611)
        response = get("?zip=#{zipcode},us&appid=#{GbCliWeatherApi::APIKEY.api_key}&units=imperial")
        GbCliWeatherApi::Weather.new(
            {
                :weather_main => response["weather"][0]["main"],
                :weather_description => response["weather"][0]["description"],
                :temp => response["main"]["temp"],
                :temp_feel => response["main"]["feels_like"],
                :temp_min => response["main"]["temp_min"],
                :temp_max => response["main"]["temp_max"],
                :pressure => response["main"]["pressure"],
                :humidity => response["main"]["humidity"],
                :visibility => response["visibility"],
                :wind_speed => response["wind"]["speed"],
                :wind_deg => response["wind"]["deg"],
                :clouds => response["clouds"]["all"],
                :sunrise => response["sys"]["sunrise"],
                :sunset => response["sys"]["sunset"],
                :location_name => response["name"]
            }
        )
    end
end