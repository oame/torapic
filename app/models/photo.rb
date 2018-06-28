class Photo < ApplicationRecord
  # include Colourable
  include Tokenable

  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :image, presence: true
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
