class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @countries = Country.all
    @trip = Trip.new
  end

  def dashboard
    @trips = Trip.where(user_id: current_user)
  end
end
