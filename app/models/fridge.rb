class Fridge < ActiveRecord::Base
	has_many :foods
	has_many :drinks
	validates :location, presence: true
	validates :brand, presence: true
	validates :size, presence: true
end
