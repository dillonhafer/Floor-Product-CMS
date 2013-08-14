class WallbaseStyleTypesController < ApplicationController
  before_filter :require_admin

  def index
    @style_types = WallbaseStyleType.order :name
  end

  def new
    @style_type = WallbaseStyleType.new
  end

  def edit
    @style_type = WallbaseStyleType.find params[:id]
  end

  def create
    @style_type = WallbaseStyleType.new(wallbase_style_type_params)
    if @style_type.save
      redirect_to wallbase_style_types_path, notice: 'Create Style Type'
    else
      render :new
    end
  end

  def update
    @style_type = WallbaseStyleType.find params[:id]

    if @style_type.update_attributes(wallbase_style_type_params)
      redirect_to wallbase_style_types_path, notice: 'Updated Style Type'
    else
      render :edit
    end
  end

  def destroy
    style_type = WallbaseStyleType.find params[:id]
    style_type.destroy
    flash[:error] = "Deleted Style Type"
    redirect_to wallbase_style_types_path
  end

  def wallbase_style_type_params
    params.require(:wallbase_style_type).permit(:name, :wallbase_collection_id)
  end
end