class Publisher
  include Mongoid::Document

  embedded_in :event

  field :id, type: Integer
end