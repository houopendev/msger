# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :user_email do |n|
    "john_#{n}@smith.net"
  end

  factory :user do
    email { FactoryGirl.generate(:user_email) }
    username "john"
    password "test!1Password"
    password_confirmation "test!1Password"
  end
end
