class CreateFoodReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :food_reviews do |t|
      t.string :comment
      t.integer :food_id
      t.integer :customer_id
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
