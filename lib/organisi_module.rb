module OrganisiData
  path = File.dirname(__FILE__).split("/")
  path.pop
  BOOKMARKS_DATABASE = "#{path.join("/")}/public/bookmarks.json"
  EVENT = [:date, :time, :title, :tags, :notes]
end