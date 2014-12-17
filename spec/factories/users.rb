FactoryGirl.define do
  factory :user do
    first_name "Test"
    last_name "User"
    email "test@example.com"
    password "please123"
    password_confirmation "please123"
  end
end
