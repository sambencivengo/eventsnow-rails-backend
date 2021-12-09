class AttendanceSerializer < ActiveModel::Serializer
  attributes  :host
  has_one :event

end



