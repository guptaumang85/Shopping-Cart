class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to signup_url
    else
      render 'new'
    end

  end

  def new 
    @user = User.new
  end


  private
  def user_params
    #binding.pry
    params.require(:user).permit(:email, :password, :last_name, :first_name, :date_of_birth, :contact_number)
  end
  
end
