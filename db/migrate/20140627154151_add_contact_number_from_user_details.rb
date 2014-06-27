class AddContactNumberFromUserDetails < ActiveRecord::Migration
  def change
    add_column :user_details, :contact_number, :string
  end
end
