class Renter < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :flats, through: :matches
end
