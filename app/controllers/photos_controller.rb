class PhotosController < ApplicationController
  before_action :authenticate_user!, except: %i(show)
  before_action :set_photo, only: %i(show edit update destroy)

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  def index
    @photos = policy_scope(current_user.photos)

    @photos.each do |photo|
      photo.destroy if photo.expired?
    end
  end

  def show
    authorize @photo

    @photo.destroy if @photo.expired?
    ViewCountWorker.perform_async @photo.id
  end

  def new
    @photo = Photo.new
    authorize @photo
  end

  def create
    @photo = Photo.new(photo_params)
    authorize @photo
    @photo.user_id = current_user.id

    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
    authorize @photo
  end

  def update
    authorize @photo
    if @photo.update_attributes!(photo_params)
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
    authorize @photo
    if @photo.destroy
      redirect_to photos_path
    else
      render :edit
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image, :expired_at)
  end
end
