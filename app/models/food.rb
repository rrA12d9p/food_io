class Food < ActiveRecord::Base
	belongs_to :fridge
	validates :name, presence: true
	validates :weight, presence: true
	validates :vegan, presence: true
	validates :updated_at, presence: true
end
