class ProductsController < ApplicationController
  # Runs 'Devise' gem to ensure user has admin permissions
  before_action :authenticate_user!

  def index
    @products = Product.all

    # DEVISE: Shows only the products held by the current user
    # @products = current_user.products
  end

  def new
    @product = Product.new
  end

  def edit
    # DEVISE: Only the owner of the product can edit.
    # DEVISE If id of owner of product != id of current user, redirect to products index
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    @product = Product.find params[:id]
  end

  def show
    @product = Product.find params[:id]
  end

  def create
    @product = Product.new product_params

    respond_to do |format|
      if @product.save
        format.html{redirect_to @product, notice: "'#{@product.title}' was created"}
      else
        format.html{render :new}
      end
    end
  end

  def update
    # DEVISE: Only the owner of the product can update.
    # DEVISE If id of owner of product != id of current user, redirect to products index
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    @product = Product.find params[:id]

    respond_to do |format|
      if @product.update product_params
        format.html{redirect_to @product, notice: "'#{@product.name}' was created"}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    # DEVISE: Only the owner of the product can delete.
    # DEVISE If id of owner of product != id of current user, redirect to products index
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path
  end

  def product_params
    # Params access the parameters sent by the form
    # Require 'resource name' targets the specific section of params required
    # Permit grants write access to these attributes
    return params.require(:product).permit(:name, :price, :stock, :description)
  end
end
