class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end

end
