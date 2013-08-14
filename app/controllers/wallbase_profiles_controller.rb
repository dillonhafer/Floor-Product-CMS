class WallbaseProfilesController < ApplicationController
  before_filter :require_admin

  def new    
    @profile = WallbaseProfile.new wallbase_style_type_id: params[:id]
  end

  def edit
    @profile = WallbaseProfile.find params[:id]
  end

  def create
    @profile = WallbaseProfile.new params[:profile]
    
    if @profile.save
      redirect_to wallbase_collection_path(@profile.wallbase_collection), notice: 'Created Profile'
    else
      render :new
    end
  end

  def update
    @profile = WallbaseProfile.find params[:id]

    if @profile.update_attributes params[:profile]
      redirect_to wallbase_collection_path(@profile.wallbase_collection), notice: 'Updated Profile'
    else
      render :edit
    end
  end

  def destroy
    profile = WallbaseProfile.find params[:id]
    profile.destroy
    flash[:error] = "Deleted Profile"
    redirect_to wallbase_collections_path
  end
end