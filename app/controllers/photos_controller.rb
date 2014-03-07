class PhotosController < InheritedResources::Base
  include Pundit

  before_action :authenticate_user!
  before_action :set_photo, only: %i(show edit update destroy)
  before_action :authorize_photo, except: %i(show edit update destroy)

  def new
    @photo = Photo.new
    render layout: 'layouts/landscape'
  end

  private

  def authorize_photo
    authorize Photo
  end

  def set_photo
    @photo = Photo.find(photo_params)
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end
