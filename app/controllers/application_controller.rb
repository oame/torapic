class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :permission_denied

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit :name, :email, :password, :password_confirmation
    end
  end

  private

  def permission_denied
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end
end
