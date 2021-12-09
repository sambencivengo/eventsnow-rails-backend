class AttendanceSerializer < ActiveModel::Serializer
  attributes  :host, :user_id
  has_one :event


end



