class MileageSerializer < ActiveModel::Serializer
  attributes :id, :car_id, :purchase_date, :gallons_of_gas, :trip_miles, :price_of_gas
end
