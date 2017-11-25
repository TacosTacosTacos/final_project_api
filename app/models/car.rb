class Car < ApplicationRecord
  belongs_to :user
  belongs_to :make
  has_many :mileages
end
