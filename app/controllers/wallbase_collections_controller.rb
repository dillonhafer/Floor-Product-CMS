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
    @collection = WallbaseCollection.new params[:collection]
    if @collection.save
      redirect_to wallbase_collection_path(@collection), notice: 'Create Wallbase Collection'
    else
      render :new
    end
  end

  def update
    @collection = WallbaseCollection.find params[:id]

    if @Wallbasecollection.update_attributes params[:collection]
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
end