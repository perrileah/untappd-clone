class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :checkins
  has_many :beers, through: :checkins
end
