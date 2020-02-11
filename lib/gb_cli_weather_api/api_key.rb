class GbCliWeatherApi::APIKEY

    def self.update_api_key
        if api_key_exists?
            puts "This will delete your key permanently."
            puts "Are you sure? Enter y for yes or n for no: "
            answer = gets.strip
            if answer.downcase.include?('y')
                self.delete_api_key
                self.set_api_key
            else
                puts "OK no problem."
                puts "Your api key is unchanged."
                puts "Would you like to see your api key?"
                puts "Enter y for yes or n for no: "
                show_key = gets.strip
                if show_key.downcase.include?('y')
                    puts "Your api key is: #{self.api_key}"
                else
                    puts "OK"
                end
            end
        else
            puts "You don't have an api key to update right now."
            puts "Would you like to set an api key? "
            set_key = gets.strip
            if set_key.downcase.include?("y")
                self.set_api_key
            else
                puts "OK"
            end
        end
    end

    private

    def self.set_api_key
        self.create_api_key if !self.api_key_exists?
        @@api_key = File.open(".api_key").read
    end

    def self.create_api_key
        puts "Enter your api key for weatehr underground:"
        key = gets.strip
        File.open(".api_key", "w"){|f| f.write(key)}
    end

    def self.api_key_exists?
        !!File.file?(".api_key")
    end


    def self.delete_api_key
        File.delete(".api_key")
    end

    def self.api_key
        @@api_key
    end

end