class API < Grape::API
  prefix "api"
  version 'v1', :using => :path
  format :json
  formatter :json, Grape::Formatter::Rabl

  helpers do

  end

  resource "photos" do
    # params do
    #   requires :id, type: Integer
    # end
    get ":id", rabl: 'photo' do
      @photo = Photo.find(params[:id])
    end
  end
end
