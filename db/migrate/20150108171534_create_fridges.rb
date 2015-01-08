class CreateFridges < ActiveRecord::Migration
  def change
    create_table :fridges do |t|
      t.string :location
      t.string :brand
      t.float :size

      t.timestamps null: false
    end
  end
end
