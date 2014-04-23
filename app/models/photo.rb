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

class Photo < ActiveRecord::Base
  include Colourable
  acts_as_paranoid

  belongs_to :user

  validates :image, presence: true

  mount_uploader :image, ImageUploader

  before_create :set_salt

  def set_salt
    self.salt = Digest::SHA1.hexdigest("#{rand(999)}.#{rand(999)}.#{image.filename}.#{image.content_type}")
  end

  def expirable?
    expired_at.present?
  end

  # Return true if photo has been expired
  def expired?
    if expirable?
      expired_at < Time.now
    else
      false
    end
  end

  def view!
    self.view_count += 1
    save
  end
end
