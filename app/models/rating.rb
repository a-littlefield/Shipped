class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :star, length: { minimum: 1 }
  validates :star, length: { maximum: 5 }
  validates :star, presence: true
  validates :star, only_integer: true
  validates :review, length: { maximum: 200 }
end
