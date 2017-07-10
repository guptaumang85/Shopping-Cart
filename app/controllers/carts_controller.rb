class CartsController < ApplicationController
  before_action :current_cart

  def show
  end

  def add_product
    chosen_product = Product.find(params[:cart][:id])
    if @cart.products.include?(chosen_product)
      flash[:error] = "Product is already present in cart "
      redirect_to cart_path(@cart) and return
    else
      cart_product = @cart.cart_products.new(product_id: chosen_product.id)
    end
    cart_product.quantity = params[:cart][:quantity]
    cart_product.save
    redirect_to cart_path(@cart)
  end

  def destroy
    cart_product = @cart.cart_products.find(params[:id])
    cart_product.destroy
    redirect_to cart_path(@cart)
  end

  def update
    chosen_product = Product.find(params[:cart][:id])
    cart_product = @cart.cart_products.find_by(product_id: chosen_product.id)
    cart_product.quantity = params[:cart][:quantity]
    cart_product.save
    redirect_to cart_path(@cart)
  end

end
