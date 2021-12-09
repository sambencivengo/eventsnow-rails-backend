class AttendanceSerializer < ActiveModel::Serializer
  attributes  :host, :user_id, :id
  has_one :event


end



