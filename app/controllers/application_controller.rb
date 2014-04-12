class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  private

  def permission_denied
    head 403
  end
end
