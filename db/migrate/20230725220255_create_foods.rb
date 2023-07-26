class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.integer :discount
      t.integer :restaurant_id
      t.boolean :vegetarian
      t.boolean :allergen
      t.text :ingredients
      t.string :category
      t.string :picture
      t.integer :sales
      t.integer :ratings

      t.timestamps
    end
  end
end
