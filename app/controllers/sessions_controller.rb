class SessionsController < ApplicationController

  def new  
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] =user.id
      flash[:notice] = "hey, hey, hey, you're in"
      redirect_to user
    else
      flash.now[:alert] = "ooops, either your email or password is wrong"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "see ya later"
    redirect_to root_path
  end

end
