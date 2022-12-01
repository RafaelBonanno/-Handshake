class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @country = @trip.country
    @tips = Tip.where(category: @category, country: @country)
    @phrases = Phrase.where(category: @category)
    @phrases_country = PhraseCountry.all
  end

end
