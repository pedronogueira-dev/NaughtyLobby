class UsersController < ApplicationController
  def dashboard
    @reviews = current_user.reviews
    @meetings = current_user.meetings
    @votes = current_user.meetings
  end
end
