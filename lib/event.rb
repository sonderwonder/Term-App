class Event 
    attr_reader :id, :date, :time, :title, :tags, :notes


    def initialize(id, date, time, title, tags, notes)
        @id = id 
        @date = date 
        @time = time 
        @title = title 
        @tags = tags
        @notes = notes 
    end

    def to_a 
        [@id, @date, @time, @title, @tags, @notes]
    end


end

hot_date = Event.new(1, "12/10/20", 12, "hot date", ["hopeful", "date"], "Can't wait")


print hot_date.to_a