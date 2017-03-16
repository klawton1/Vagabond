class CitiesController < ApplicationController
  def show
    @city = City.find_by_id(params[:id])
    @comments = Comment.where(city_id: @city.id).order(:created_at)
    if !@city
      redirect_to root_path
    end
  end
end
