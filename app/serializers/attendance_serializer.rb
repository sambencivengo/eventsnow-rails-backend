class AttendanceSerializer < ActiveModel::Serializer
  attributes  :host
  has_one :user
  has_one :event
end



