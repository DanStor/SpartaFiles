class ProductsController < ApplicationController
  def index
  end

  def show
    @product = params[:id]
  end

  def edit
  end

  def new
  end
end
