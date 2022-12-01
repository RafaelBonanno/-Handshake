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
    flash[:alert] = "The phrase was addded to your favs"
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to request.referer
  end

end
