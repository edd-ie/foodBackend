class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.text :items
      t.float :discount
      t.float :latitude
      t.float :longitude
      t.integer :customer_id
      t.integer :restaurant_id
      t.text :food_id
      t.integer :service_fee
      t.float :total

      t.timestamps
    end
  end
end
