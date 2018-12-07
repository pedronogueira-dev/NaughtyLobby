class UsersController < ApplicationController
  def dashboard
    @reviews = current_user.reviews
    @meetings = current_user.meetings
    @votes = current_user.votes
  end

  def upload
    current_user.remote_photo_url_url = photo_params[:photo_url]
    current_user.save
    redirect_to :dashboard
  end

  def edit
    @user = current_user
  end

  private
  def photo_params
    params.require(:user).permit(:photo_url)
  end
end
