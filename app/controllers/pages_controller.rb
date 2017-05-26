class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @horntrips = Horntrip.all
  end

  def twitter
  end
end
