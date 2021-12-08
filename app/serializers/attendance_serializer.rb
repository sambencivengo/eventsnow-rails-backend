class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :host, :event_id, :user_id
  has_one :user
  has_one :event
end
