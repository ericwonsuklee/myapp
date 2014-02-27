class MoolahController < ApplicationController

  def expenses
    @expense_list=Money.all
    @trip_list=Trip.all
    @trip = Trip.find_by(:id => params[:trip_id])
  end

  def show
    @expense = Money.find_by(:id => params[:expense_id])
  end
  def destroy
    expense = Money.find_by(:id => params[:expense_id])
    expense.destroy
    redirect_to "/expenses", notice: "Expense item was deleted"
  end

  def new
    @trip_list=Trip.all
    @trip = Trip.find_by(:id => params[:trip_id])
  end

  def create
    expense = Money.new
    expense.description = params["description"]
    expense.amount = params["amount"]
    expense.comment = params["comment"]
    expense.fortrip = params["fortrip"]
    expense.save
    redirect_to "/expenses"
  end

  def edit
    @expense = Money.find_by(:id => params[:expense_id])
  end

  def update
    expense = Money.find_by(:id => params[:expense_id])
    expense.description = params["description"]
    expense.amount = params["amount"]
    expense.comment = params["comment"]
    expense.save
    redirect_to "/expenses"
  end


end
