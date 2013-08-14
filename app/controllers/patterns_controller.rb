class PatternsController < ApplicationController
  before_filter :require_admin

  def index
    @patterns = Pattern.all
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new pattern_params
    if @pattern.save
      redirect_to patterns_path, notice: 'Added pattern'
    else
      render 'new'
    end
  end

  def edit
    @pattern = Pattern.find params[:id]
  end

  def update
    @pattern = Pattern.find params[:id]
    if @pattern.update_attributes(pattern_params)
      redirect_to patterns_path, notice: 'Updated pattern'
    else
      render 'edit'
    end
  end

  def destroy
    pattern = Pattern.find params[:id]
    pattern.destroy
    redirect_to patterns_path, notice: 'Deleted pattern'
  end

  def pattern_params
    params.require(:pattern).permit(:name)
  end
end
