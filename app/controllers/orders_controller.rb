class OrdersController < ApplicationController
  before_action  :current_cart, only: [:new, :create, :show]

  def new
    @order = Order.new
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def index
    @orders = current_user.orders
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.status = "In Progress"
    create_order_list(@order)
    if @order.save
      UserMailer.order_confirmation(@order).deliver
      flash[:success] = "Your order has been successfully placed"
      clear_cart_and_cart_products
      redirect_to order_path(@order.id)
    else
      render 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, :address, :pay_method, :status)
  end

  def create_order_list order
    @cart.cart_products.each do |cart_product|
      order.order_lists.new(product_id: cart_product.product_id, qty: cart_product.quantity, price: cart_product.product.price)
    end
  end

end