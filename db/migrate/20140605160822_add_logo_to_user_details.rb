class AddLogoToUserDetails < ActiveRecord::Migration
  def change
    add_column :user_details, :logo, :string
  end
end
