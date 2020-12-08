class Admins::HomesController < ApplicationController

	before_action :authenticate_admin!

	def index
		@contacts = Contact.where(status: "未対応")
		@order_news = Order.where(status: "入金待ち")
		@order_ends = Order.where(status: "発送準備中")
	end

end
