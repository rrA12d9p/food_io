class AddMaxDrinkOzToFridge < ActiveRecord::Migration
  def change
  	add_column :fridges, :max_drink_oz, :integer, default: 50
  end
end
