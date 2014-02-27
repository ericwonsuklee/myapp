class PagesController < ApplicationController #separate by methods/domain model. self organization purpose

  def index
    @payment_list = ["Venmo", "Paypal", "SquareCash"]
  end

  def show
  end

  def newflightinfo
  end


end
