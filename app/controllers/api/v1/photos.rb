class API::V1::Photos < Grape::API
  resource :photos do
    # GET /api/v1/photos/:id
    get ":id", rabl: 'photo' do
      @photo = Photo.find(params[:id])
    end

    # POST /api/v1/photos
    post '/', rabl: 'photo' do
      @photo = current_user.photos.build(photo_params)
      @photo.image = ActionDispatch::Http::UploadedFile.new(params[:photo]) if params[:photo]
      @photo.save!
      @photo.reload
    end
  end
end
