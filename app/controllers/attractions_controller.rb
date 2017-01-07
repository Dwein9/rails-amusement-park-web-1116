class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
    current_user
  end

  def show
    @attraction = Attraction.find(params[:id])
    current_user
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if current_user.admin
      @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render :new
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
    current_user
  end



  private

  def attraction_params
   params.require(:attraction).permit(:name, :tickets, :min_height, :happiness_rating, :nausea_rating)
  end



end
