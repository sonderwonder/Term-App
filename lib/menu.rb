class Menu

    def initialize 

    end 

    def launch_menu 
        puts "\n"
        puts "Welcome to the Organisi:"
        puts "\n"
        puts "would you like to:"
        puts "1. View your Calander"
        puts "2. Schedule a new event"
    end
end

session = Menu.new

session.launch_menu