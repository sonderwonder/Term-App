require_relative 'event_repository'

def welcome
    puts "\n"
    puts "Welcome To Organisi      o(^◇^)o"
end

class Menu

    def initialize 
        @event_repository = EventRepository.new
    end 

    def welcome
        puts "\n"
        puts "Welcome To Organisi      o(^◇^)o"
    end

    def launch_menu 
        puts "\n"
        puts "How can i assist you today? | (type '1, 2 or 3')"
        puts "1. View your Calander    (ு८ு )"
        puts "2. Schedule a New Event  _φ(．．)" 
        puts "3. Leave Organisi        (ノ-_-)ノ ︵┻━┻"
        gets.chomp
    end

    def menu_options
        loop do 
            case launch_menu 
            when "1"
                #Go to calender view 
            when "2"
                @event_repository.create_event
            when "3"
                exit
            else 
                puts "\n"
                puts "|Input not recognised ¯\\_(ツ)_/¯ Please type menu option '#'|"
            end
        end
    end 


end

