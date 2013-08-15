class ColorFamiliesController < ApplicationController
  before_filter :require_admin

  def index
    @color_families = ColorFamily.order(:name)
  end

  def new
    @color_family = ColorFamily.new
  end

  def create
    @color_family = ColorFamily.new color_family_params
    if @color_family.save
      redirect_to color_families_path, notice: 'Added color family'
    else
      render 'new'
    end
  end

  def edit
    @color_family = ColorFamily.find params[:id]
  end

  def update
    @color_family = ColorFamily.find params[:id]
    if @color_family.update_attributes(color_family_params)
      redirect_to color_families_path, notice: 'Updated color family'
    else
      render 'edit'
    end
  end

  def destroy
    color_family = ColorFamily.find params[:id]
    color_family.destroy
    redirect_to color_families_path, notice: 'Deleted color family'
  end

  def color_family_params
    params.require(:color_family).permit(:name)
  end
end
