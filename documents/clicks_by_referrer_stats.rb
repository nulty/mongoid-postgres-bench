class ClicksByReferrerStats
  include Mongoid::Document

  embedded_in :event, inverse_of: :clicks_by_referrer
  embeds_one :publisher

  field :clicks, type: Integer
  field :referrer, type: String
end