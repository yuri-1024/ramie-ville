class Public::OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
		@order_items = @order.order_items
	end

	def new
		@order = Order.new
	end

	def comfirm
		@end_user = current_end_user
		@order = Order.new
		@carts = Cart.all
		if params[:order][:address_option] == "0"
			@order.postal_code = current_end_user.postal_code
			@order.address = current_end_user.address
			@order.name = current_end_user.name_family + current_end_user.name_first

		else params[:order][:address_option] == "1"
			@order.postal_code = params[:order][:postal_code]
			@order.address = params[:order][:address]
			@order.name = params[:order][:name]
		end
	end

	def create
		@order = Order.new(order_params)
		@order.save!

		@carts = current_end_user.carts.all
		  @carts.each do |cart|
		  	@order_item = OrderItem.new
		  	@order_item.item_id = cart.item.id
		  	@order_item.order_id = @order.id
		  	@order_item.price = (cart.item.price * 1.1).floor
		  	@order_item.amount = cart.amount
		  	@order_item.save
		  end
		@carts.destroy_all
		redirect_to complete_path
	end

	private

	def order_params
		params.require(:order).permit(:end_user_id, :postal_code, :address, :name, :cost, :charge, :payment, :status)
	end
end
