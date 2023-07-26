class CreateFavRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :fav_restaurants do |t|
      t.integer :customer_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
