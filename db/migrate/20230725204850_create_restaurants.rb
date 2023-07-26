class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :phone
      t.boolean :policy
      t.string :picture
      t.string :location
      t.integer :pay_bill
      t.integer :till_num
      t.string :acc_num
      t.string :ambience
      t.string :picture
      t.integer :ratings
      t.integer :sales

      t.timestamps
    end
  end
end
