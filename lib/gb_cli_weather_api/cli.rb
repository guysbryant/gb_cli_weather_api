class GbCliWeatherApi::CLI

    def initialize
        GbCliWeatherApi::APIKEY.set_api_key
        menu
    end

    def menu
        puts "Let's show your weather.\n Enter your zipcode: "
        # zipcode = gets.strip.downcase
        # menu if zipcode.length != 5 || zipcode =~ /[a-z]/
        # get_weather_by_zip(zipcode)
        city = gets.strip.downcase
        get_weather_by_city(city)
    end

    def get_weather_by_city(city)
        weather = GbCliWeatherApi::API.city_weather(city)
        binding.pry
    end

    def get_weather_by_zip(zipcode)
        weather = GbCliWeatherApi::API.zip_code_weather(zipcode)
    end
end
