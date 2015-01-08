class AddMaxFoodItemsToFridge < ActiveRecord::Migration
  def change
  	add_column :fridges, :max_food_items, :integer, default: 10
  end
end
