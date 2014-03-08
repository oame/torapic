# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  user_id    :integer
#  expired_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user

  mount_uploader :image, ImageUploader

  def expired?
    expired_at < Time.now
  end
end
