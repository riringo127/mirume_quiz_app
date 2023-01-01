class FavoritesController < ApplicationController
    def create
        @color = Color.find(params[:color_id])
        current_user.favorite(@color)
    end

    def destroy
        @color = current_user.favorites.find(params[:id]).color
        current_user.unfavorite(@color)
    end
end
