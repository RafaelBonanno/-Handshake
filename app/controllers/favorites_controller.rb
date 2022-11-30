class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user)
  end

  def new
    @favorite = Favorite.new
  end

  def create_favorite
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.phrase_country_id = params[:phrase]
    @favorite.save
  end

  def destroy_favorite(favorite)
    raise
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end

end
