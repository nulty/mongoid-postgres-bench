require 'mongoid'
require_relative "documents/event"
require_relative "documents/url"
require_relative "documents/publisher"
require_relative "documents/clicks_by_day_stats"
require_relative "documents/clicks_by_referrer_stats"

Mongoid.load!('./mongoid.yml', :development) #, database: :click_stats

# load the redis database into mongo

e = Event.new(id: 1 )

url = Url.new(index: 0, value: 'http://www.twitter.com')
