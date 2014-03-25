class PhotosController < ApplicationController
  include Pundit

  before_action :authenticate_user!, except: %i[show]
  before_action :set_photo, only: %i(show edit update destroy)
  before_action :authorize_photo, except: %i(show edit update destroy)

  def index
    @photos = current_user.photos
    @photos.each do |photo|
      photo.destroy if photo.expired?
    end
  end

  def show
    @photo.destroy if @photo.expired?
    @photo.view!
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id

    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @photo.update_attributes!(photo_params)
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
    if @photo.destroy
      redirect_to photos_path
    else
      render :edit
    end
  end

  private

  def authorize_photo
    authorize Photo
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :expired_at)
  end
end
