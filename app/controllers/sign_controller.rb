class SignController < ApplicationController

  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Bye Bye"
  end


  def create
    user = User.find_by(:email => params[:email_acct])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to root_url, notice:"Welcome User!"
      else
        redirect_to root_url, notice:"Wrong Password"
      end
    else
      redirect_to root_url, notice:"Unknown user"
    end

  end
end
