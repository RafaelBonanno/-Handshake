class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user: current_user)
    @countries = []
    @favorites.each do |favorite|
      @countries << favorite.phrase_country.country
    end
    @countries_unique = @countries.uniq
    # raise
  end

  def new
    @favorite = Favorite.new
  end

  def create_favorite
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.phrase_country_id = params[:phrase_country]
    @favorite.save
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to request.referer
  end

  def game
    @favorites = Favorite.where(user: current_user)
    @translations = PhraseCountry.all
    @phrases = Phrase.all
  end

end
