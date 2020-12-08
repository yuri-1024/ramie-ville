class Public::ItemsController < ApplicationController

	before_action :authenticate_end_user!

	def index
		@creaters = Creater.all
		@tags = Item.tag_counts_on(:tags)
		if params[:creater_sort]
			@items = Item.where(creater_id: params[:creater_sort])
			@creater = Creater.find(params[:creater_sort])
			@item_index_title = @creater.name + "の作品一覧"

		elsif params[:tag_name]
			@items = Item.tagged_with("#{params[:tag_name]}")
			@item_index_title = "商品一覧"
		else
			@item_index_title = "商品一覧"
			@items = Item.all
		end
	end

	def show
		@creaters = Creater.all
		@item = Item.find(params[:id])
		@cart = Cart.new
	end

	private

	def cart_params
		params.require(:cart).permit(:amount, :item_id)
	end




end