class VenuesController < ApplicationController
  def index
    @venues = Venue.page(params[:page]).per(10)
  end

  def show
    @venue = Venue.find(params[:id])
  end
end
