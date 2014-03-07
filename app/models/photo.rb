# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  expired_at :datetime
#  deleted_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user

  # Paperclip
  has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def expired?
    expired_at < Time.now
  end
end
