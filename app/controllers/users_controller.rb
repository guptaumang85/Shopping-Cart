class UsersController < ApplicationController
  before_action :require_logout, only: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      flash[:success] = "You have sucessfuly log in"
      redirect_to root_url
    else
      render 'new'
    end

  end

  def new
    @user = User.new
  end

  def edit
     @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :last_name, :first_name, :date_of_birth, :contact_number, :user_type)
  end

end
