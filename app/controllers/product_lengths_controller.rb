class ProductLengthsController < ApplicationController
  before_filter :require_admin

  def index
    @product_lengths = ProductLength.all
  end

  def new
    @product_length = ProductLength.new
  end

  def create
    @product_length = ProductLength.new product_length_params
    if @product_length.save
      redirect_to product_lengths_path, notice: 'Added product length'
    else
      render 'new'
    end
  end

  def edit
    @product_length = ProductLength.find params[:id]
  end

  def update
    @product_length = ProductLength.find params[:id]
    if @product_length.update_attributes(product_length_params)
      redirect_to product_lengths_path, notice: 'Updated product length'
    else
      render 'edit'
    end
  end

  def destroy
    product_length = ProductLength.find params[:id]
    product_length.destroy
    redirect_to product_lengths_path, notice: 'Deleted product length'
  end

  def product_length_params
    params.require(:product_length).permit(:name)
  end
end
