class Movie < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	has_many :viewings
	has_many :ratings
	has_many :users, through: :viewings
	belongs_to :user
	validates :name, presence: true
	validates :genre, presence: true
	validates :location, presence: true
	validates :length, presence: true
	validates :avatar, presence: true
end
