class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    @politician = Politician.find(params[:politician_id])

    @vote.politician = @politician
    @vote.user = current_user

    if @vote.save
      flash[:notice] = "You have submited the information successfully!"
      redirect_to :dashboard
    else
      redirect_to politician_path(@politician)
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    if current_user == @vote.user
      @vote.destroy
      redirect_to :dashboard
    else
      redirect_to :dashboard
      flash[:alert] = "The vote was not deleted"
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:position, :subject, :user, :politician)
  end
end
