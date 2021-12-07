class LocationSerializer < ActiveModel::Serializer
  attributes :id, :venue_name, :address, :city, :state, :zipcode
end
