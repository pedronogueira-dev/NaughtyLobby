class PoliticiansController < ApplicationController
  def index
    if params[:name_query].present?
      @politicians = Politician.all.where("name ILIKE ?", "%#{params[:name_query]}%")
    else
      @politicians = Politician.all
    end
  end

  def show
    @politician = Politician.find(params[:id])
  end
end
