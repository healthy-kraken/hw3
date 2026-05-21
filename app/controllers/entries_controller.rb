class EntriesController < ApplicationController
  before_action :set_place

  def index
    @entries = Entry.where(place_id: @place.id).order(occurred_on: :desc)
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.place_id = @place.id
    @entry.occurred_on = Date.today if @entry.occurred_on.blank?
    if @entry.save
      redirect_to place_entries_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def entry_params
    params.require(:entry).permit(:title, :description, :occurred_on)
  end
end
