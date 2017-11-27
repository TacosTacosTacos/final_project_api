# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :cars
  has_many :makes, through: :cars
  has_many :mileages, through: :cars
  has_many :services, through: :cars
end
