class TripsController < ApplicationController

  def trips
    @trip_list=Trip.all
  end

  def show
    @trip = Trip.find_by(:id => params[:trip_id])
  end

  def destroy
    trip = Trip.find_by(:id => params[:trip_id])
    trip.destroy
    redirect_to "/trips", notice: "That trip was deleted"
  end

  def new
  end

  def create
    trip = Trip.new
    trip.trip_name = params["trip_name"]
    trip.location = params["location"]
    trip.start_date = params["start_date"]
    trip.end_date = params["end_date"]
    trip.description = params["description"]
    trip.save
    # trip_valid = trip.save
    # if trip_valid == 1 ......
    #render 'create'
    #give error message

    redirect_to "/trips"
  end

  def edit
    @trip = Trip.find_by(:id => params[:trip_id])
  end

  def update
    trip = Trip.find_by(:id => params[:trip_id])
    trip.trip_name = params["trip_name"]
    trip.location = params["location"]
    trip.start_date = params["start_date"]
    trip.end_date = params["end_date"]
    trip.description = params["description"]
    trip.save
    redirect_to "/trips"
  end


end
