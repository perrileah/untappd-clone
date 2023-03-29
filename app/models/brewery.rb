class Brewery < ApplicationRecord
  has_many :beer
  has_many :users, through: :checkins
  has_many :checkins
end
