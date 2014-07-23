class UserDetail < ActiveRecord::Base
  validates :user_id, presence: true
  attr_accessible :about_me, :birthdate, :contact_email, :contact_number, :course, :ethnicity, :past_experience, :personality_traits, :photo, :reference_details_1, :reference_details_2, :university, :location, :social_link, :driving_license, :car, :work_sector, :location, :role, :about_role, :role_length, :criminal_conviction
  validates :about_me, :birthdate, :contact_email, :contact_number, :course, :past_experience, :personality_traits, :photo, :reference_details_1, :university, :location, :work_sector, :location, :role, :about_role, :role_length, presence: true
  belongs_to :user
  mount_uploader :photo, AvatarUploader
 
  def age

dob = read_attribute(:birthdate)
now = Time.now.utc.to_date
now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)

end 
  

ransacker :age, :formatter => proc {|v| Date.today - v.to_i.year} do |parent|
  parent.table[:birthdate]
end   
  end
