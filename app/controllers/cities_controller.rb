class CitiesController < ApplicationController
  def show
    @city = City.find_by_id(params[:id])
    if !@city
      redirect_to root_path
    end
  end
end
