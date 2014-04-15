class ViewCountWorker
  include Sidekiq::Worker
  # sidekiq_options queue: :event

  def perform(id)
    @photo = Photo.find(id)
    @photo.view!
  end
end
