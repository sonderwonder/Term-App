require 'json'
require_relative 'organisi_module'

class Event 
    attr_reader :id, :date, :time, :title, :tags, :notes

    include OrganisiData

    def initialize(date, time, title, tags, notes) 
        @date = date 
        @time = time 
        @title = title 
        @tags = tags
        @notes = notes 
    end

    def to_hash
        #needs to convert the info in an object into a hash 
    end

    def json_string
        #need  to convert the event hash into a string 
    end


end


