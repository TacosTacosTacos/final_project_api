class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :year, :label, :user_id
  has_one :make
end
