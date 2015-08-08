class Url
  include Mongoid::Document

  embedded_in :event, inverse_of: :url

  field :index, type: Integer
  field :value, type: String
end