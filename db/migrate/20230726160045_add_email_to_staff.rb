class AddEmailToStaff < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :email, :string
    add_index :staffs, :email
  end
end
