class Food < ActiveRecord::Base
	before_save :verify_capacity

	belongs_to :fridge
	validates :name, presence: true
	validates :weight, presence: true
	validates :vegan, default: false

	def verify_capacity
		fridge_capacity = self.fridge.max_food_items

		# only save food to fridge if fridge is under max capacity
		if self.fridge.foods.count < fridge_capacity
			return true
		else
			return false
		end
	end
end
