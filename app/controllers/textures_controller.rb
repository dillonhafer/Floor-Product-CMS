class TexturesController < ApplicationController
  before_filter :require_admin

  def index
    @textures = Texture.all
  end

  def new
    @texture = Texture.new
  end

  def create
    @texture = Texture.new texture_params
    if @texture.save
      redirect_to textures_path, notice: 'Added texture'
    else
      render 'new'
    end
  end

  def edit
    @texture = Texture.find params[:id]
  end

  def update
    @texture = Texture.find params[:id]
    if @texture.update_attributes(texture_params)
      redirect_to textures_path, notice: 'Updated texture'
    else
      render 'edit'
    end
  end

  def destroy
    texture = Texture.find params[:id]
    texture.destroy
    redirect_to textures_path, notice: 'Deleted texture'
  end

  def texture_params
    params.require(:texture).permit(:name)
  end
end
