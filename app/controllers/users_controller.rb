class UsersController < ApplicationController
  include Pundit

  before_action :authenticate_user!, except: %i(show)
  before_action :set_user, only: %i(show)

  def show
  end

  private

  def set_user
    @user = User.find(params[:name])
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
