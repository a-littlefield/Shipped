class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :star, presence: true, numericality: true, inclusion: { in: 1..5 }
  validates :review, length: { maximum: 200 }
end
