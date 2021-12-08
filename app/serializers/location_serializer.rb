class LocationSerializer < ActiveModel::Serializer
  attributes :id, :location_name, :address, :city, :state, :zipcode
end
