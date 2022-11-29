class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @country = @trip.country
    @categories = Category.all
  end

  def new
    @trip = Trip.new
    @countries = Country.all
  end

  def create

    @trip = Trip.new(trip_params)
    @trip.country = Country.find(params[:trip][:country_id])
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    @country = @trip.country
  end

  def update
    @trip = Trip.find(params[:id])
    @country = @trip.country
    @trip.user = current_user
    @trip.update(trip_params)
    redirect_to trips_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    @country = @trip.country
    @trip.destroy
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :user, :country)
  end
end
