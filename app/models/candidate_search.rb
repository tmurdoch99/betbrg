class CandidateSearch < ActiveRecord::Base
  attr_accessible :age, :ethnicity, :experience, :qualifications, :region
  
  def users
  @users ||= find_users
end

  private

def find_products
  users = User.order(:name)
  users = users.where(age: age) if age.present?
  users = users.where(ethnicity: ethnicity) if ethnicity.present?
  users = users.where(experience: experience) if experience.present?
  users = users.where(qualifications: qualifications) if qualifications.present?
  users = users.where(region: region) if region.present?
  users
end
end
