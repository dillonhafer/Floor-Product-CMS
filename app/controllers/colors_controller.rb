class ColorsController < ApplicationController
  
  before_filter :require_admin

  def new
    @color_palettes = ColorPalette.order(:name)
    @color_families = ColorFamily.order(:name)
    @color = Color.new color_palette_id: params[:id]
  end

  def edit
    @color_palettes = ColorPalette.order(:name)
    @color_families = ColorFamily.order(:name)
    @color = Color.find params[:id]
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to color_palettes_path, notice: 'Created Color'
    else
      render :new
    end
  end

  def update
    @color = Color.find params[:id]
    if @color.update_attributes(color_params)
      redirect_to color_palettes_path(color_palette_id: @color.color_palette_id), notice: 'Updated Color'
    else
      render :edit
    end
  end

  def destroy
    color = Color.find params[:id]
    color.destroy
    flash[:notice] = "Deleted Color"
    redirect_to color_palettes_path
  end

  def color_params
    params.require(:color).permit(:color_palette_id, :color_number, :name, :color_foundation, :hex, :selects)
  end
end