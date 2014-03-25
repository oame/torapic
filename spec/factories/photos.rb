# == Schema Information
#
# Table name: photos
#
#  id                     :integer          not null, primary key
#  image                  :string(255)
#  user_id                :integer
#  expired_at             :datetime
#  view_count             :integer          default(0)
#  image_background_color :string(255)
#  image_text_color       :string(255)
#  image_link_color       :string(255)
#  image_shadow_color     :string(255)
#  deleted_at             :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    image Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/sample.png')))
    expired_at { Time.now }
    user
  end
end
