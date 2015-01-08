class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :size
      t.boolean :alcoholic
      t.belongs_to :fridge

      t.timestamps null: false
    end
  end
end
