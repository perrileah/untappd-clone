class CheckIn < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  belongs_to :brewery
end
