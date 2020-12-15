class Creaters::HomesController < ApplicationController

	before_action :authenticate_creater!

	def index
		@order_item_news = OrderItem.joins(:item).select("order_items.*, items.*").where(items: {creater_id: current_creater.id}).where(creat_status: "未着手")

		@order_item_goings = OrderItem.joins(:item).select("order_items.*, items.*").where(items: {creater_id: current_creater.id}).where(creat_status: "製作中")
		@item = Item.all
	end
end
