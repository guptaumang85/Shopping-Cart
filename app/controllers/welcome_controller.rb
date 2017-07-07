class WelcomeController < ApplicationController
  def new
    @products = Product.all
  end

end