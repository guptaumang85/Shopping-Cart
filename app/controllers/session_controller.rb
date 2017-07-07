class SessionController < ApplicationController
  before_action :require_logout, only: [:new, :create]
  before_action :require_session, only: [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "You have sucessfuly log in"
      redirect_to root_url and return

    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = "You have sucessfuly logged out"
    redirect_to root_url and return
  end

end