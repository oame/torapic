class UsersController < ApplicationController
  include Pundit

  before_action :authenticate_user!, except: %i(show)
  before_action :set_user, only: %i(show)

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:uid)
  end
end
