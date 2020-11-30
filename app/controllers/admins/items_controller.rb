class Admins::ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		redirect_to admins_item_path(@item.id)
	end

	private

	def item_params
		params.require(:item).permit(:name, :body, :price, :status, :tag_list, :image_id, :creater_id)
	end
end