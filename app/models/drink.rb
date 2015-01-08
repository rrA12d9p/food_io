class Drink < ActiveRecord::Base
	before_save :verify_capacity

	belongs_to :fridge
	validates :name, presence: true
	validates :size, presence: true
	validates :alcoholic, default: false

	def verify_capacity
		fridge_capacity = self.fridge.max_drink_oz
		current_oz = self.fridge.drinks.sum(:size)

		# only save drinks to fridge if fridge is under max oz capacity
		if current_oz + self.size <= fridge_capacity
			return true
		else
			return false
		end
	end
end
