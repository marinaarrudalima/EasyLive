class User < ApplicationRecord
  has_one :company
  has_many :renters
end
