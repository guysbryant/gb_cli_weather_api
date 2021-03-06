class GbCliWeatherApi::Weather
    attr_accessor :weather_main, :weather_description, :temp, :temp_feel, :temp_min, :temp_max, :pressure, :humidity, :visibility, :wind_speed, :wind_deg, :clouds, :sunrise, :sunset, :location_name

    def initialize(hash)
        hash.each{|k, v| self.send("#{k}=", v)}
    end
end
