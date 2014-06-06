class AddLocationAndWorkSectorAndAboutRoleAndRoleLengthAndSocialLinkAndDrivingLicenseAndCarAndCiminalConvictionToUserDetails < ActiveRecord::Migration
  def change
    add_column :user_details, :location, :string
    add_column :user_details, :work_sector, :string
    add_column :user_details, :about_role, :string
    add_column :user_details, :role_length, :integer
    add_column :user_details, :social_link, :string
    add_column :user_details, :driving_license, :boolean
    add_column :user_details, :car, :boolean
    add_column :user_details, :criminal_conviction, :boolean
  end
end
