class Admins::ItemsController < ApplicationController

	before_action :authenticate_admin!

	def index
		@creaters = Creater.all
		if params[:creater_sort]
			@items = Item.where(creater_id: params[:creater_sort])
			@creater = Creater.find(params[:creater_sort])
		else
			@items = Item.all
		end
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