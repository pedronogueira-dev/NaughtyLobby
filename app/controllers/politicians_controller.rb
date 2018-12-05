class PoliticiansController < ApplicationController
  def index
    if params[:name_query].present?
      @politicians = Politician.all.where("name ILIKE ? OR location ILIKE ? OR party ILIKE ? OR general_description ILIKE ?" ,
        "%#{params[:name_query]}%", "%#{params[:name_query]}%", "%#{params[:name_query]}%", "%#{params[:name_query]}%")
    else
      @politicians = Politician.all
    end
  end

  def show
    @politician = Politician.find(params[:id])
    @meeting = Meeting.new
  end
end
