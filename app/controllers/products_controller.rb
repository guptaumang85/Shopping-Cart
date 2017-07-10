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

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(product_params)
      flash[:success] = "Your product has been updated successfuly "
      redirect_to root_url
    else
      render 'edit'
    end
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
    params.require(:product).permit(:name, :price, :description, :image, :quantity)
  end

end
