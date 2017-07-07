class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ::SessionHelper
  include ::ApplicationHelper

  def require_logout
    if logged_in?
      flash[:error] = "You must be logged out to access this section"
      redirect_to root_url and return
    end
  end

  def require_session
    unless logged_in?
      flash[:error] = "You must be logged out to access this section"
      redirect_to root_url and return
    end
  end

  private

  def current_cart
    @cart = current_user.cart || current_user.build_cart if current_user
  end

  def clear_cart_and_cart_products
    @cart.cart_products.destroy_all
  end

end