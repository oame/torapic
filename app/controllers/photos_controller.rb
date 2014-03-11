class PhotosController < ApplicationController
  include Pundit

  before_action :authenticate_user!
  before_action :set_photo, only: %i(show edit update destroy)
  before_action :authorize_photo, except: %i(show edit update destroy)

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def authorize_photo
    authorize Photo
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end
