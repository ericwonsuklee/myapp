class PagesController < ApplicationController #separate by methods/domain model. self organization purpose


  def expenses
    @expense_list=Money.all
  end

  def show
    @expense = Money.find_by(:id => param[:expense_id])
  end
  def destroy
    expense = Money.find_by(:id => params[:expense_id])
    expense.destroy
    redirect_to "/expenses", notice: "Expense item was deleted"
  end

  def new
  end

  def create
    expense = Money.new
    expense.description = params["description"]
    expense.amount = params["amount"]
    expense.comment = params["comment"]
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
  # def newexp
  # end

  def index
    @payment_list = ["Venmo", "Paypal", "SquareCash"]
  end

  def show
  end

  def signin
  end

  def newflightinfo
  end


end
