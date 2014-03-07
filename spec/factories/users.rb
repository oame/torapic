# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  uid                    :string(255)      default(""), not null
#  provider               :string(255)      default(""), not null
#  name                   :string(255)
#  deleted_at             :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name { Faker::Internet.user_name(nil, %w(_)) }
    email { Faker::Internet.safe_email }
    password "password"
    password_confirmation "password"

    trait :as_twitter_user do
      provider 'twitter'
      uid { Random.rand(100000) }
    end
  end
end
