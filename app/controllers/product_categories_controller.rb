class ProductCategoriesController < ApplicationController
  before_filter :require_admin

  def index
    @product_categories = ProductCategory.all
  end

  def new
    @product_category = ProductCategory.new
  end

  def create
    product_category = ProductCategory.new product_category_params
    if product_category.save
      redirect_to product_categories_path, notice: 'Added product category'
    else
      render 'new'
    end
  end

  def edit
    @product_category = ProductCategory.find params[:id]
  end

  def update
    product_category = ProductCategory.find params[:id]
    if product_category.update_attributes(product_category_params)
      redirect_to product_categories_path, notice: 'Updated product category'
    else
      render 'edit'
    end
  end

  def destroy
    product_category = ProductCategory.find params[:id]
    product_category.destroy
    redirect_to product_categories_path, notice: 'Deleted product category'
  end

  def product_category_params
    params.require(:product_category).permit(:name)
  end
end
