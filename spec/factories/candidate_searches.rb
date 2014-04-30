# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :candidate_search do
    region "MyString"
    experience "MyString"
    qualifications "MyString"
    age "MyString"
    ethnicity "MyString"
  end
end
