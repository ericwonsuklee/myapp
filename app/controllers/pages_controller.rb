class PagesController < ApplicationController #separate by methods/domain model. self organization purpose

  def index
    @payment_list = ["Venmo", "Paypal", "SquareCash"]
  end

  def show
  end

  def newflightinfo
  end

  def map
    @trip = Trip.find_by(:id => params[:trip_id])
  end
end
