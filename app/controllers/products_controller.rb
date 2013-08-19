class ProductsController < ApplicationController
  before_filter :require_admin

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: 'Created product'
    else
      render 'new'
    end
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to products_path, notice: 'Deleted product'
  end

  def product_params
    params.require(:product).permit(:sku,:product_family_id,:product_thickness_id,:product_length_id,:product_width_id,:product_warranty_id,:color_id)
  end
end
