class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # skip certaines restricitions du before dans app_ctrl
  before_action :find_product, only: [:show, :edit, :update, :destroy] # refacto voir find_product


  def index
    if params[:category]
      @products = Product.where(category: params[:category])
    else
      @products = Product.all
    end
  end
  def show
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @product.user == current_user
      @product.update(product_params)
      redirect_to products_path
    else
      flash[:alert] = "Action impossible, ce produit n'est pas le votre."
      render :edit
    end
  end
  def destroy
    if @product.user == current_user
    @product.destroy # detruit
    redirect_to products_path
    else
    redirect_to products_path
    flash[:alert] = "Action impossible, ce produit n'est pas le votre."
  end
  end

  private
  def product_params
    params.require(:product).permit(:name, :url, :tagline, :category)
  end
  def find_product
    @product = Product.find(params[:id]) # get dans url id
  end
end
