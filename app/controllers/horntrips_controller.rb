class HorntripsController < ApplicationController
  before_action :set_horntrip, only: [:show, :edit, :update, :destroy]

  def index
    @location = params[:horntrip][:q]
    @search_parameters = params[:horntrip]
    # raise
    if params[:horntrip].empty?
      @horntrips = Horntrip.all
    else
      @horntrips = Horntrip.where("is_outside = ?
        OR is_dirty = ?
        OR is_food = ?
        AND location ILIKE ?", params[:horntrip][:is_outside] == "1", params[:horntrip][:is_dirty] == "1", params[:horntrip][:is_food] == "1", "%#{params[:horntrip][:q]}%")
    end
  end

  def show
  end

  def new
    @horntrip = Horntrip.new
  end

  def create
    @horntrip = Horntrip.new(horntrip_params)
    @horntrip.user = current_user
    @horntrip.starting_day = Date.strptime(params[:horntrip][:starting_day], '%m/%d/%Y')
    if @horntrip.save
      @horntrip.user.is_mike = true
      @horntrip.user.save
      redirect_to horntrips_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @horntrip.update(horntrip_params)
    redirect_to horntrip_path(@horntrip)
  end

  def destroy
    @horntrip.destroy
    redirect_to horntrips_path
  end

  def dashboard
    @user_horntrips = current_user.horntrips
  end

  private

  def horntrip_params
    params.require(:horntrip).permit(:title, :location, :price, :starting_day, :length, :description, :is_outside, :is_dirty, :is_food, :photo)
  end

  def set_horntrip
    @horntrip = Horntrip.find(params[:id])
  end
end
