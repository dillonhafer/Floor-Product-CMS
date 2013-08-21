class ProductFamiliesController < ApplicationController
  before_filter :require_admin

  def index
    @show_on_page = params[:show_on_page] ||= 16  
    id = params[:product_category_id] ||= 12

    @product_categories = ProductCategory.order(:name)
  end

  def new
    @product_family = ProductFamily.new
  end

  def create
    @product_family = ProductFamily.new product_family_params
    if @product_family.save
      redirect_to product_families_path, notice: 'Added product family'
    else
      render 'new'
    end
  end

  def edit
    @product_family = ProductFamily.find params[:id]
  end

  def update
    @product_family = ProductFamily.find params[:id]
    if @product_family.update_attributes(product_family_params)
      redirect_to product_families_path, notice: 'Updated product family'
    else
      render 'edit'
    end
  end

  def destroy
    product_family = ProductFamily.find params[:id]
    product_family.destroy
    redirect_to product_families_path, notice: 'Deleted product family'
  end

  def product_family_params
    params.require(:product_family).permit(:product_category_id, :name, :sample_code)
  end
end

