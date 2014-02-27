class SignController < ApplicationController

  def signin
  end

  def signup
    @trip_list=Trip.all
    @trip = Trip.find_by(:id => params[:trip_id])
  end

end
