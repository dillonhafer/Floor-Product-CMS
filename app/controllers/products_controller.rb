class ProductsController < ApplicationController
  before_filter :require_admin

  def index    
    @show_on_page = params[:show_on_page] ||= 16
    id = params.has_key?(:search) ? params[:search][:product_family_id] : 26

    @family_name = ProductFamily.find(id).name
    @products = Product.where(product_family_id: id).paginate(page: params[:page], per_page: params[:show_on_page])
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

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    if @product.update_attributes(product_params)
      redirect_to products_path, notice: 'Updated product'
    else
      render 'edit'
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
