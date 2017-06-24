class RegistrationsController < ApplicationController
	def show
    @user = Registration.find(params[:id])
  end
	def create
		@user = Registration.new(registration_params)

		@user.save
  	redirect_to @user
	
	end


	private
  def registration_params
    params.require(:user).permit(:email, :password, :last_name)
  end

end
