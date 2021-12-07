class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :category, :description, :date
  has_one :location
end
