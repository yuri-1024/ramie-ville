class Creaters::OrderItemsController < ApplicationController

	before_action :authenticate_creater!

	def index
		@order_items = OrderItem.joins(:item).select("order_items.*, items.*").where(items: {creater_id: current_creater.id}).where(creat_status: "未着手")
	end

	def show
		@order_item = OrderItem.find(params[:id])
		@item = @order_item.item
	end

	def update
		@order_item = OrderItem.find(params[:id])
		@order = @order_item.order
		@order_item.update(order_item_params)

		if @order_item.creat_status == "製作中"
			new_status = "製作中"
			@order.update_attribute(:status, new_status)
		elsif @order.order_items.count == @order.order_items.where(creat_status: "製作完了").count
			new_status = "発送準備中"
			@order.update_attribute(:status, new_status)
		else
		end

		redirect_to creaters_order_items_path
	end

	private

	def order_item_params
		params.require(:order_item).permit(:creat_status)
	end
end
