class Admins::OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
		@order_items =@order.order_items
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		redirect_to admins_order_path(@order.id)
	end

	private

	def order_params
		params.require(:order).permit(:end_user_id, :postal_code, :address, :name, :cost, :charge, :payment, :status)
	end
end
