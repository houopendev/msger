# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    association :user, :factory => :user
    body "MyString"
  end
end
