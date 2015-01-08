class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.float :weight
      t.boolean :vegan
      t.belongs_to :fridge

      t.timestamps null: false
    end
  end
end
