class User < ApplicationRecord
  has_one :profile
  has_many :food_items
  has_and_belongs_to_many :foods
end
