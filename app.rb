require 'mongoid'
require_relative "documents/event"
require_relative "documents/url"
require_relative "documents/publisher"

Mongoid.load!('./mongoid.yml', :development) #, database: :click_stats

# load the redis database into mongo

e = Event.new(id: 1 )

url = Url.new(index: 0, value: 'http://www.twitter.com')
