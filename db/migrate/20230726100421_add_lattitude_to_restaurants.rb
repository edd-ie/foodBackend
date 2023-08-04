class AddLattitudeToRestaurants < ActiveRecord::Migration[7.0]


  def change
    add_column :restaurants, :latitude, :float
  end

  
end

