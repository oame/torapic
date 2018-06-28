# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :authentication do
    user
    provider "MyString"
    uid "MyString"
    token "MyString"
    token_secret "MyString"
  end
end
