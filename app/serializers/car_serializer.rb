class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :year, :label, :user_id, :mileages
  has_one :make
end
