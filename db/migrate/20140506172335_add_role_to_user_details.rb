class AddRoleToUserDetails < ActiveRecord::Migration
  def change
    add_column :user_details, :role, :string
  end
end
