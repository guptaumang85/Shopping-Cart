module SessionHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    @current_user = User.where(id: session[:user_id]).first if logged_in?
  end

  def log_out
    session.delete(:user_id)
  end

  def user_admin?
    current_user.user_type == 'admin'
  end

end