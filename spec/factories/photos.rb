# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  user_id            :integer
#  expired_at         :datetime
#  deleted_at         :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    image_file_name "file.png"
    image_content_type "image/png"
    image_file_size 1024
    image_updated_at { Time.now }
    expired_at { Time.now }
    user
  end
end
