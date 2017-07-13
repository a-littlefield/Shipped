class Movie < ApplicationRecord
	has_many :viewings
	has_many :ratings
	has_many :users, through: :viewings
	validates :liked, acceptance: true
end
