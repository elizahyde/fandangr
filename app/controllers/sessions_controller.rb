class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to movies_path
      else
        flash.now[:notice] = "Your email or password are not correct."
        render :new
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_path, :notice => "You're logged out."
  end
end
