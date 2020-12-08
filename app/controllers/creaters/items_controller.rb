class Creaters::ItemsController < ApplicationController

	before_action :authenticate_creater!
	
	def index
		@items = Item.where(creater_id: current_creater.id)
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to creaters_item_path(@item.id)
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
		redirect_to creaters_item_path(@item.id)
	end

end

	private

	def item_params
		params.require(:item).permit(:name, :body, :creater_id, :price, :status, :image, :tag_list)
	end
end
