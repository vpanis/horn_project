class HorntripsController < ApplicationController
  before_action :set_horntrip, only: [:show, :edit, :update, :destroy]

  def index
    @horntrips = Horntrip.all
  end

  def show
  end

  def new
    @horntrip = Horntrip.new
  end

  def create
    @horntrip = Horntrip.new(horntrip_params)
    @horntrip.user = current_user
    if @horntrip.save
      redirect_to horntrips_path
    else
      render :new
    end
  end

  def destroy
    @horntrip.destroy
    redirect_to horntrips_path
  end

  private

  def horntrip_params
    params.require(:horntrip).permit(:title, :location, :price, :starting_day, :length, :description, :is_outside, :is_dirty, :is_food)
  end

  def set_horntrip
    @horntrip = Horntrip.find(params[:id])
  end
end
