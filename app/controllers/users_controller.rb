class UsersController < ApplicationController
  def dashboard
    @reviews = current_user.reviews
    @meetings = current_user.meetings
    @votes = current_user.votes
  end

  def upload
    if params[:user].present? && params[:user][:photo_url].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:user][:photo_url])
      raise "Invalid upload signature" if !preloaded.valid?
      @user.photo_url = preloaded.identifier
    end
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
