class Company < ApplicationRecord
  belongs_to :user
  belongs_to :flat
end
