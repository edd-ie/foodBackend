class DeleteEmailFromStaff < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :email, :password_digest
  end
end
