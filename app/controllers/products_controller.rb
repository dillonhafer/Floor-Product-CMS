class ProductsController < ApplicationController
  before_filter :require_admin

  def index        
    @show_per_page = params[:show_per_page] ||= 20
    if params.has_key? :product_family
      @product_family = ProductFamily.find(params[:product_family][:id])      
    else
      @product_family = ProductFamily.order(:name).first      
    end
    
    @filter = ["product_family_id = ?", @product_family.id]
    @select_constraints = %w{product_thickness_id product_length_id product_width_id product_warranty_id}
    @constraints = %w{weldrod sku}
    
    @constraints.each do |c|
      unless params[c].blank?
        @filter[0] += " AND #{c} LIKE ?"
        @filter.push "#{params[c]}"
      end
    end

    @select_constraints.each do |c|
      unless params[c].blank?
        @filter[0] += " AND #{c} = ?"
        @filter.push params[c].to_i
      end
    end
    
    @products = Product.where(@filter).order(:sku).paginate(page: params[:page],per_page: params[:show_per_page])
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find params[:id]
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
    params.require(:product).permit(:sku,
                                    :product_family_id,
                                    :product_thickness_id,
                                    :product_length_id,
                                    :product_width_id,
                                    :product_warranty_id,
                                    :color_id,
                                    :weldrod,
                                    :coordinating_color_id
                                    )
  end
end
