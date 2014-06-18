class UserDetail < ActiveRecord::Base
  validates :user_id, presence: true
  attr_accessible :about_me, :birthdate, :contact_email, :contact_number, :course, :ethnicity, :past_experience, :personality_traits, :photo, :reference_details_1, :reference_details_2, :university, :location, :social_link, :driving_license, :car, :work_sector, :location, :role, :about_role, :role_length, :criminal_conviction
  belongs_to :user, :foreign_key => 'id'
  mount_uploader :photo, AvatarUploader
  
  end
