require_relative 'event'
require 'json'

class EventRepository 
  attr_accessor :event_data 

  include OrganisiData

  def initialize(event_data)
    @event_data = event_data
  end 

  def read_event 
   
  end

  #def write_event 
  #  new_event = EventRepository.new
  #  new_event.event_data = event_data
  #  new_event.event_data
  #end 

  def store_event_data 
    filename = 'public/events.json'
    existing_json = JSON.parse(File.read(filename))
    existing_json << self.event_data
    File.open(filename,"w") do |f|
      f.write(JSON.pretty_generate(existing_json))
    end
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
    self.event_data = event 
    self.store_event_data
  end

  def create_event_loop
    event = {}
    EVENT.each do |input|
      puts "What is the #{input} of your event?"
      puts " "
      event[input] = gets.chomp
    end
    event
  end

end







