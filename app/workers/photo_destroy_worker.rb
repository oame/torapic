class PhotoDestroyWorker
  include Sidekiq::Worker

  def perform(user_id)
    @photos = User.find(id).photos
    @photos.each do |photo|
      photo.destroy if photo.expired?
    end
  end
end
