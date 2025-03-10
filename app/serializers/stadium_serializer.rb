class StadiumSerializer < ActiveModel::Serializer
  attributes :id, :name, :capacity, :location
end
