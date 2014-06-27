class RemoveContactNumberFromUserDetails < ActiveRecord::Migration
  def up
    remove_column :user_details, :contact_number
  end

  def down
    add_column :user_details, :contact_number, :interger
  end
end
