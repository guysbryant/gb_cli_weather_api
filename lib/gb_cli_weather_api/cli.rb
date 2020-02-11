class GbCliWeatherApi::CLI

    def initialize
        GbCliWeatherApi::APIKEY.set_api_key
        menu
    end

    def menu
        puts "Let's show your weather.\n Enter your zipcode: "
        zipcode = gets.strip.downcase
        menu if zipcode.length != 5 || zipcode =~ /[a-z]/
        puts GbCliWeatherApi::API.zip_code_weather(zipcode)
    end
end
