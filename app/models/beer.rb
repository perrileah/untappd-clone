class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :users, through: :checkins
  has_many :checkins
end
