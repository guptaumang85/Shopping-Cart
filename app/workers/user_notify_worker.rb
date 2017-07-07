class UserNotifyWorker
  include Sidekiq::Worker

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.signup_confirmation(user).deliver
  end

  def confirm(order_id)
    order = Order.find(order_id)
    UserMailer.order_confirmation(order).deliver
  end
end