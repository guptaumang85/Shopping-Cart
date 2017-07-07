class CartsController < ApplicationController
  before_action :current_cart, only: [:add_product, :show]

  def show
  end

  def add_product
    chosen_product = Product.find(params[:cart][:id])
    if @cart.products.include?(chosen_product)
      cart_product = @cart.cart_products.where(product_id: chosen_product).first
    else
      cart_product = @cart.cart_products.new(product_id: chosen_product.id)
    end
    cart_product.quantity = params[:cart][:quantity]
    cart_product.save
    redirect_to cart_path(@cart)
  end

end