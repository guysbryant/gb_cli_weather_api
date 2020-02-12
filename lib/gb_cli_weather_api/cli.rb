class GbCliWeatherApi::CLI

    def initialize
        GbCliWeatherApi::APIKEY.set_api_key
        menu
    end

    def menu
        puts "Let's show your weather.\n Enter your city and state abbreviation separated by a comma, or zipcode: "
        input = gets.strip.downcase
        if input.match(/\A[0-9]{5}\z/)
            weather = get_weather_by_zip(input)
        elsif input.match(/\A[a-z]+, [a-z]{2}\z/i)
            weather = get_weather_by_city(input)
        else
            puts "You entered #{input} but I can only work with a 5 digit zipcode or a city and state abbreviation separated by a comma."
            puts "For example, 29611 is the zipcode for Greenville, Sout Carolina and I can work with that zipcode."
            puts "I can also work with Greenville, SC."
            menu
        end
        binding.pry
    end

    def get_weather_by_city(city)
        GbCliWeatherApi::API.city_weather(city)
    end

    def get_weather_by_zip(zipcode)
        GbCliWeatherApi::API.zip_code_weather(zipcode)
    end
end
