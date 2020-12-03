class Creaters::OrderItemsController < ApplicationController

	def index
		@order_items = OrderItem.all
	end

	def show
		@order_item = OrderItem.find(params[:id])
		@item = @order_item.item
	end

	def update
		@order_item = OrderItem.find(params[:id])
		@order_item.update(order_item_params)
		redirect_to creaters_order_items_path
	end

	private

	def order_item_params
		params.require(:order_item).permit(:creat_status)
	end
end
