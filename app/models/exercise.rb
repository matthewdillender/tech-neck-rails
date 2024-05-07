class Exercise < ApplicationRecord
  belongs_to :category
  has_many :users, through: :routines
end
