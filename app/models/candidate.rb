class Candidate < ActiveRecord::Base
  attr_accessible :age, :ethnicity, :experience, :qualifications, :region
end
