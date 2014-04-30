# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_detail do
    birthdate "2014-04-24"
    ethnicity "MyString"
    university "MyString"
    course "MyString"
    past_experience "MyString"
    personality_traits "MyString"
    about_me "MyString"
    photo "MyString"
    reference_details_1 "MyString"
    reference_details_2 "MyString"
    contact_number 1
    contact_email "MyString"
  end
end
