class UserMailer < ApplicationMailer
  default from: "railstest78@gmail.com"

  def signup_confirmation(user)
    @user = user
    mail to: @user.email, subject: "Sign up Confirmation"
  end

  def order_confirmation(order)
    @order = order
    mail to: @order.email, subject: "Order Confirmation"
  end
end