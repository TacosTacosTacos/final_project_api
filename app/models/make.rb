class Make < ApplicationRecord
  has_many :cars
  has_many :users, through: :cars
end
