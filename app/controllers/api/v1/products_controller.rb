class Api::V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    #render @products.as_json
    render json: @products
  end
end