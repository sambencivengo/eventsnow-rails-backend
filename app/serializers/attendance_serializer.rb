class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :host
  has_one :user
  has_one :event
end
