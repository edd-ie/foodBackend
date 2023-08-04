class AddLongitudeToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :longitude, :float
  end
end
