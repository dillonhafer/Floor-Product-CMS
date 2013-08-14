class WallbaseCollectionsController < ApplicationController
  before_filter :require_admin

  def index
    @collections = WallbaseCollection.order :name
  end

  def show
    @collection = WallbaseCollection.find params[:id]
  end

  def new
    @collection = WallbaseCollection.new    
  end

  def edit
    @collection = WallbaseCollection.find params[:id]
  end

  def create
    @collection = WallbaseCollection.new(wallbase_collection_params)
    if @collection.save
      redirect_to wallbase_collection_path(@collection), notice: 'Create Wallbase Collection'
    else
      render :new
    end
  end

  def update
    @collection = WallbaseCollection.find params[:id]

    if @Wallbasecollection.update_attributes(wallbase_collection_params)
      redirect_to wallbase_collection_path(@collection), notice: 'Updated Wallbase Collection'
    else
      render :edit
    end
  end

  def destroy
    colleciton = WallbaseCollection.find params[:id]
    colleciton.destroy
    flash[:error] = 'Deleted Wallbase Collection'
    redirect_to wallbase_collections_path
  end

  def wallbase_collection_params
    params.require(:wallbase_collection).permit(:name, :material)
  end
end