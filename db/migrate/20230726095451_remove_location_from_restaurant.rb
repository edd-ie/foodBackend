class RemoveLocationFromRestaurant < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :location
  end
end
