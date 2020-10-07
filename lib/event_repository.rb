require_relative 'event'

class EventRepository 
  attr_accessor :event 

  include OrganisiData

  def initialize 
    
  end 

  def read_event 

  end

  def create_event
    event = self.create_event_loop
    new_event = Event.new(
      event[:date],
      event[:time],
      event[:title],
      event[:tags],
      event[:notes]
    )
    print new_event 
  end

  def store_event 
    #Needs to save json string to events.json file 
  end

  def create_event_loop
    event = {}
    EVENT.each do |input|
      puts "What is the #{input} of your event?"
      puts "> "
      event[input] = gets.chomp
      
    end
    event
  end

end







