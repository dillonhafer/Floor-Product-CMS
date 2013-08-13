class ProductWarrantiesController < ApplicationController
  before_filter :require_admin

  def index
    @product_warranties = ProductWarranty.all
  end

  def new
    @product_warranty = ProductWarranty.new
  end

  def create
    @product_warranty = ProductWarranty.new product_warranty_params
    if @product_warranty.save
      redirect_to product_warranties_path, notice: 'Added product warranty'
    else
      render 'new'
    end
  end

  def edit
    @product_warranty = ProductWarranty.find params[:id]
  end

  def update
    @product_warranty = ProductWarranty.find params[:id]
    if @product_warranty.update_attributes(product_warranty_params)
      redirect_to product_warranties_path, notice: 'Updated product warranty'
    else
      render 'edit'
    end
  end

  def destroy
    product_warranty = ProductWarranty.find params[:id]
    product_warranty.destroy
    redirect_to product_warranties_path, notice: 'Deleted product warranty'
  end

  def product_warranty_params
    params.require(:product_warranty).permit(:name)
  end
end
