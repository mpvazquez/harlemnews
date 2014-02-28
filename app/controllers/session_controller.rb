class SessionController < ApplicationController
  def new
    render(:new)
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      @message = "This email and password combination does not exist"
      render(:new)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
