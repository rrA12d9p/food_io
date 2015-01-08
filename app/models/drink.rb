class Drink < ActiveRecord::Base
	belongs_to :fridge
	validates :name, presence: true
	validates :size, presence: true
	validates :alcoholic, presence: true
	validates :updated_at, presence: true
end
