class Public::ItemsController < ApplicationController

	def index
		@creaters = Creater.all
		@tags = Item.tag_counts_on(:tags)
		if params[:creater_sort]
			@items = Item.where(creater_id: params[:creater_sort]).page(params[:page]).reverse_order
			@creater = Creater.find(params[:creater_sort])
			@item_index_title = @creater.name + "の作品一覧"

		elsif params[:tag_name]
			@items = Item.tagged_with("#{params[:tag_name]}").page(params[:page]).reverse_order
			@item_index_title = "商品一覧"
		else
			@item_index_title = "商品一覧"
			@items = Item.page(params[:page]).reverse_order
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