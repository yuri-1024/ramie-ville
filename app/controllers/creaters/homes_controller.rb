class Creaters::HomesController < ApplicationController

	before_action :authenticate_creater!

	def index
		@order_item_news = OrderItem.where(creat_status: "未着手")
		@order_item_goings = OrderItem.where(creat_status: "製作中")
		@item = Item.all
	end
end
