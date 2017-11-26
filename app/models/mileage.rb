class Mileage < ApplicationRecord
  belongs_to :car
  has_many :users, through: :cars
end
