class Exercise < ApplicationRecord
  belongs_to :categories
  has_many :users, through: :routines
end
