class ClicksByDayStats
  include Mongoid::Document

  embedded_in :event, inverse_of: :clicks_by_day
  embeds_one :publisehr

  field :clicks, type: Integer
  field :referrer, type: String
end