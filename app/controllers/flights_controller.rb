class FlightsController < ApplicationController

  def new
    @flight_list = Flight.all
  end


  def flights
    @flight_list = Flight.all
    @flight = Flight.find_by(:id => params[:flight_id])
  end

  def destroy
    flight = Flight.find_by(:id => params[:flight_id])
    flight.destroy
    redirect_to "/flights", notice: "That flight was cancelled."
  end

  def create
    flight_list = Flight.all
    flight = Flight.new
    flight.trip_name = params["trip_name"]
    flight.airline = params["airline"]
    flight.flight_number = params["flight_number"]
    flight.depart_location = params["depart_location"]
    flight.arrive_location = params["arive_location"]
    flight.depart_time = params["depart_time"]
    flight.arrive_time = params["arrive_time"]
    flight.save

    redirect_to "/flights"
  end

end
