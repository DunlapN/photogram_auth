class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def like_index
    @photos = current_user.liked_photos
  end

  def show
    @user = User.find(params[:id])
  end

end
