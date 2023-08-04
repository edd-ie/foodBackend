class CreateMpesas < ActiveRecord::Migration[7.0]
  def change
    create_table :mpesas do |t|
      t.string :checkoutRequestID
      t.string :merchantRequestID
      t.string :amount
      t.string :mpesaReceiptNumber
      t.string :phoneNumber
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
