class HorntripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_horntrip, only: [:show, :edit, :update, :destroy]

  def index
    if params[:horntrip].nil?
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
      params[:horntrip] = Hash.new
    elsif params[:horntrip][:q] ==""
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
    elsif ((params[:horntrip][:is_outside] == "0" || params[:horntrip][:is_outside].nil?) && (params[:horntrip][:is_dirty] == "0" || params[:horntrip][:is_dirty].nil?) && (params[:horntrip][:is_food] == "0" || params[:horntrip][:is_food].nil?))
      @address = params[:horntrip][:q]
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
      .near(@address, 90)
    else
      @address = params[:horntrip][:q]
      @horntrips = Horntrip.where.not(latitude: nil, longitude: nil)
      .near(@address, 90)
      params[:horntrip][:is_outside] == "1" ? @horntrips = @horntrips.where("is_outside = ?", params[:horntrip][:is_outside]) : @horntrips
      params[:horntrip][:is_dirty] == "1" ? @horntrips = @horntrips.where("is_dirty = ?", params[:horntrip][:is_dirty]) : @horntrips
      params[:horntrip][:is_food] == "1" ? @horntrips = @horntrips.where("is_food = ?", params[:horntrip][:is_food]) : @horntrips
    end

    @hash = Gmaps4rails.build_markers(@horntrips) do |horntrip, marker|
       marker.lat horntrip.latitude
       marker.lng horntrip.longitude
       marker.picture(url: "http://maps.google.com/mapfiles/kml/pal2/icon12.png", width: 30, height: 30)
    end
  end

  def show
    @booking = Booking.new
    @hash = Gmaps4rails.build_markers(@horntrip) do |horntrip, marker|
       marker.lat horntrip.latitude
       marker.lng horntrip.longitude
       marker.picture(url: "http://maps.google.com/mapfiles/kml/pal2/icon12.png", width: 30, height: 30)
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
      redirect_to dashboard_path
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
