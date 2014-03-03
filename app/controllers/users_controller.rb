class UsersController < ApplicationController
  def new
  end

  def show
    @user_list=User.all
    @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
      redirect_to root_url, notice: "You do not have access to this account"
    end
  end

  def create
    user = User.new
    user.name = params["name"]
    user.email = params["email"]
    user.password = params["password"]
    user.save
    session[:user_id] = user.id
    redirect_to root_url, notice:"Welcome User!"
  end



end
