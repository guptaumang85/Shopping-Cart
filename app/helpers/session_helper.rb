module SessionHelper
<<<<<<< Updated upstream
	# Logs in the given user.
=======
  # Logs in the given user.
>>>>>>> Stashed changes
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
<<<<<<< Updated upstream
  	session[:user_id].present?
  end

  def current_user
  	@current_user = User.where(id: session[:user_id]).first if logged_in?
  end

  def log_out
  	session.delete(:user_id)
=======
    session[:user_id].present?
  end

  def current_user
    @current_user = User.where(id: session[:user_id]).first if logged_in?
  end

  def log_out
    session.delete(:user_id)
>>>>>>> Stashed changes
  end

end
