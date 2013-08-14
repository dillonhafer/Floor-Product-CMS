class WallbaseProfilesController < ApplicationController
  before_filter :require_admin

  def new    
    @profile = WallbaseProfile.new style_type_id: params[:id]
  end

  def edit
    @profile = WallbaseProfile.find params[:id]
  end

  def create
    @profile = WallbaseProfile.new params[:profile]
    @profile.style_type_id
    if @profile.save
      redirect_to collection_path(@profile.collection), notice: 'Created Profile'
    else
      render :new
    end
  end

  def update
    @profile = WallbaseProfile.find params[:id]

    if @profile.update_attributes params[:profile]
      redirect_to collection_path(@profile.collection), notice: 'Updated Profile'
    else
      render :edit
    end
  end

  def destroy
    profile = WallbaseProfile.find params[:id]
    profile.destroy
    flash[:error] = "Deleted Profile"
    redirect_to collections_path
  end
end