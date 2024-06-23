class Flat < ApplicationRecord
  belongs_to :company
  has_many :matches
  has_many :renters, through: :matches
end
