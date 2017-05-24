class HorntripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_horntrip, only: [:show, :edit, :update, :destroy]

  def index
    if params[:horntrip].nil?
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
      params[:horntrip] = Hash.new
    elsif (params[:horntrip][:is_outside] == "0") && (params[:horntrip][:is_dirty] == "0") && (params[:horntrip][:is_food] == "0")
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
    else
      @address = params[:horntrip][:q]
      @horntrips = Horntrip.where("is_outside = ?
        OR is_dirty = ?
        OR is_food = ?", params[:horntrip][:is_outside] == "1", params[:horntrip][:is_dirty] == "1", params[:horntrip][:is_food] == "1")
      .where("address ILIKE ?", "%#{params[:horntrip][:q]}%")
      .where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@horntrips) do |horntrip, marker|
       marker.lat horntrip.latitude
       marker.lng horntrip.longitude
    end
  end

  def show
    @booking = Booking.new
    @hash = Gmaps4rails.build_markers(@horntrip) do |horntrip, marker|
       marker.lat horntrip.latitude
       marker.lng horntrip.longitude
    end
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
    params.require(:horntrip).permit(:title, :address, :price, :starting_day, :length, :description, :is_outside, :is_dirty, :is_food, :photo)
  end

  def set_horntrip
    @horntrip = Horntrip.find(params[:id])
  end
end
