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
      flash[:alert] = "You already bought this vote!"
      redirect_to politician_path(@politician)
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    if current_user == @vote.user
      @vote.destroy
    else
      flash[:alert] = "You do not have permission to delete this vote!"
    end
    redirect_to :dashboard
  end

  private

  def vote_params
    params.require(:vote).permit(:position, :subject)
  end
end
