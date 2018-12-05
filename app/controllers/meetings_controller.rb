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

    @meeting = Meeting.find(params[:id])
    if current_user == @meeting.user
      @meeting.destroy
      redirect_to :dashboard
    else
      flash[:alert] = "The meeting was not deleted!"
      redirect_to :dashboard
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:start_date, :end_date, :id)
  end
end

