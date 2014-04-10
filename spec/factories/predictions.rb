# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prediction do
    ufc 1
    winner "MyString"
    round 1
    how 1
    user_id 1
  end
end
