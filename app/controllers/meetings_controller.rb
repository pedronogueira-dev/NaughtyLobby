class MeetingsController < ApplicationController
  def create
    @meeting = Meeting.new(meeting_params)

    @politician = Politician.find(params[:politician_id])

    @meeting.politician = @politician
    @meeting.user = current_user

    if @meeting.save
      flash[:notice] = "You have submited the information successfully!"
      redirect_to :dashboard
    else
      redirect_to politician_path(@politician)
    end
  end

  def destroy
  end

  private

  def meeting_params
    params.require(:meeting).permit(:start_date, :end_date, :id)
  end
end

