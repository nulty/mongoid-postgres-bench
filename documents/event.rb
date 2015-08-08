class Event
  include Mongoid::Document

  embeds_many :urls
  embeds_many :publishers
  embeds_many :clicks_by_referrers, class_name: 'ClicksByReferrerStats' #, type: Hash, default: {clicks: 0, referrer: nil}
  embeds_many :clicks_by_days, class_name: 'ClicksByDayStats'
  field :id, type: Integer
end