class API::Base < Grape::API
  # Prefix
  prefix 'api'

  # Format
  format :json
  formatter :json, Grape::Formatter::Rabl
  default_format :json

  # Error catching
  rescue_from :all, backtrace: true
  error_formatter :json, API::ErrorFormatter

  helpers do
    def warden
      env['warden']
    end

    def authenticated
      return true if warden.authenticated?
      params[:access_token] && @user = User.find_by(:authentication_token, params[:access_token])
    end

    def current_user
      warden.user || @user
    end
  end

  # Force authenticate
  # before do
  #   error!("401 Unauthorized", 401) unless authenticated
  # end

  # Mount modules
  mount API::V1::Base
end
