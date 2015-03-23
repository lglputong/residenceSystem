class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(reservation_params)

    if @venue.save
      render :index
    else
      render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.name = params[:venue][:name]
    @venue.description = params[:venue][:description]
    @venue.length = params[:venue][:length]
    @venue.width = params[:venue][:width]
    @venue.area = params[:venue][:area]

    if @reservation.save!
      render :success
    else
      render :edit
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path
  end

  def index
    @venues = Venue.all
  end

  def venue_params
    params.require(:venue).permit!
  end
end
