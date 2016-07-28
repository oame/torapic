# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    user
    provider "MyString"
    uid "MyString"
    token "MyString"
    token_secret "MyString"
  end
end
