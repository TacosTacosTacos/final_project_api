class MileageSerializer < ActiveModel::Serializer
  attributes :id, :purchase_date, :gallons_of_gas, :trip_miles, :price_of_gas
  has_one :car
end
