class PlacesController < ApplicationController
  def index
    @places = Place.select("MIN(id) as id, name, MIN(created_at) as created_at").group(:name)
  end

  def forget
    @places = Place.select("MIN(id) as id, name, MIN(created_at) as created_at").group(:name)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @place = Place.find(params[:id])
    Place.where(name: @place.name).destroy_all
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name)
  end
end
