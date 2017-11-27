class Car < ApplicationRecord
  belongs_to :user
  belongs_to :make
  has_many :mileages
  has_many :services
end
