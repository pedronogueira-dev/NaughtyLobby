class ReviewsController < ApplicationController
  before_action :get_politician, only: [:new, :create, :show]
  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def new

    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.politician = @politician
    @review.user = current_user

    if @review.save
      redirect_to politician_path(@politician)
    else
      render :new
    end
  end

  private
  def get_politician
    @politician = Politician.find(params[:politician_id])
  end

  def review_params
    params.require(:review).permit(:rating, :title, :description)
  end
end
