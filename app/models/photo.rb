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

class Photo < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user

  # Paperclip
  has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :image

  def expired?
    expired_at < Time.now
  end
end
