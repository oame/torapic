class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :permission_denied

  private

  def permission_denied
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end
end
