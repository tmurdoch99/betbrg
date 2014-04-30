class UserDetail < ActiveRecord::Base
  mount_uploader :photo, AvatarUploader
  attr_accessible :about_me, :birthdate, :contact_email, :contact_number, :course, :ethnicity, :past_experience, :personality_traits, :photo, :reference_details_1, :reference_details_2, :university
end
