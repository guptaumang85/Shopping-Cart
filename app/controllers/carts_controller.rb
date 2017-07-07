class CartsController < ApplicationController
  before_action :current_cart, only: [:add_product, :show, :destroy]

  def show
  end

  def add_product
    chosen_product = Product.find(params[:cart][:id])
    if @cart.products.include?(chosen_product)
      flash[:error] = "Product is already present in cart "
      redirect_to cart_path(@cart) and return
      #cart_product = @cart.cart_products.where(product_id: chosen_product).first
    else
      cart_product = @cart.cart_products.new(product_id: chosen_product.id)
    end
    cart_product.quantity = params[:cart][:quantity]
    cart_product.save
    redirect_to cart_path(@cart)
  end

  def destroy
    product = @cart.cart_products.find(params[:id])
    product.destroy
    redirect_to cart_path(@cart)
  end

end