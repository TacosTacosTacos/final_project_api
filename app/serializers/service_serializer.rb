class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :service_date, :current_mileage, :notes, :service_type_id, :car_id
  has_one :car
  has_one :service_type
end
