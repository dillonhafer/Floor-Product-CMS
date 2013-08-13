class ProductWidthsController < ApplicationController
  before_filter :require_admin

  def index
    @product_widths = ProductWidth.all
  end

  def new
    @product_width = ProductWidth.new
  end

  def create
    @product_width = ProductWidth.new product_width_params
    if @product_width.save
      redirect_to product_widths_path, notice: 'Added product width'
    else
      render 'new'
    end
  end

  def edit
    @product_width = ProductWidth.find params[:id]
  end

  def update
    @product_width = ProductWidth.find params[:id]
    if @product_width.update_attributes(product_width_params)
      redirect_to product_widths_path, notice: 'Updated product width'
    else
      render 'edit'
    end
  end

  def destroy
    product_width = ProductWidth.find params[:id]
    product_width.destroy
    redirect_to product_widths_path, notice: 'Deleted product width'
  end

  def product_width_params
    params.require(:product_width).permit(:name)
  end
end
