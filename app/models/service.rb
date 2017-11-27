class Service < ApplicationRecord
  belongs_to :car
  belongs_to :service_type
  has_many :users, through: :cars
end
