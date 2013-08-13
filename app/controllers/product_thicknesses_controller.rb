class ProductThicknessesController < ApplicationController
  before_filter :require_admin

  def index
    @product_thicknesses = ProductThickness.all
  end

  def new
    @product_thickness = ProductThickness.new
  end

  def create
    @product_thickness = ProductThickness.new product_thickness_params
    if @product_thickness.save
      redirect_to product_thicknesses_path, notice: 'Added product thickness'
    else
      render 'new'
    end
  end

  def edit
    @product_thickness = ProductThickness.find params[:id]
  end

  def update
    @product_thickness = ProductThickness.find params[:id]
    if @product_thickness.update_attributes(product_thickness_params)
      redirect_to product_thicknesses_path, notice: 'Updated product thickness'
    else
      render 'edit'
    end
  end

  def destroy
    product_thickness = ProductThickness.find params[:id]
    product_thickness.destroy
    redirect_to product_thicknesses_path, notice: 'Deleted product thickness'
  end

  def product_thickness_params
    params.require(:product_thickness).permit(:name)
  end
end
