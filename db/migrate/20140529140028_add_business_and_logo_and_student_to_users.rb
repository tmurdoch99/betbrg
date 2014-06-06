class AddBusinessAndLogoAndStudentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :business, :boolean
    add_column :users, :logo, :string
    add_column :users, :student, :boolean
  end
end
