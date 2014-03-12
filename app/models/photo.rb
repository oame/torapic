# == Schema Information
#
# Table name: photos
#
#  id                     :integer          not null, primary key
#  image                  :string(255)
#  user_id                :integer
#  expired_at             :datetime
#  image_background_color :string(255)
#  image_text_color       :string(255)
#  image_link_color       :string(255)
#  image_shadow_color     :string(255)
#  deleted_at             :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

class Photo < ActiveRecord::Base
  include Colourable
  acts_as_paranoid

  belongs_to :user

  mount_uploader :image, ImageUploader

  # Return true if photo has been expired
  def expired?
    expired_at < Time.now
  end
end
