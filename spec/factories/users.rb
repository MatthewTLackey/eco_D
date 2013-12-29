# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :user do
    username "Bill"
    email "test@test.com"
    crypted_password "pass"
    password_confirmation "pass"
  end
  
end
