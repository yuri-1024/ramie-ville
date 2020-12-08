class Public::FavoritesController < ApplicationController

	before_action :authenticate_end_user!

	def index
		@favorites = Favorite.all
	end

	def create
		@item = Item.find(params[:item_id])
		item = Item.find(params[:item_id])
		favorite = current_end_user.favorites.new(item_id: item.id)
    	favorite.save
	end

	def destroy
		@item = Item.find(params[:item_id])
		item = Item.find(params[:item_id])
    	favorite = current_end_user.favorites.find_by(item_id: item.id)
    	favorite.destroy
	end

end
