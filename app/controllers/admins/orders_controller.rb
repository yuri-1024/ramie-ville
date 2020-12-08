class Admins::OrdersController < ApplicationController

	before_action :authenticate_admin!

	def index
		if params[:end_user_sort]
			@orders = Order.where(end_user_id: params[:end_user_sort])
			@end_user = EndUser.find(params[:end_user_sort])
			@orders_title = @end_user.name_family + @end_user.name_first + "の注文一覧"
		else
			@orders = Order.all
			@orders_title = "注文一覧"
		end



	end

	def show
		@order = Order.find(params[:id])
		@order_items = @order.order_items
	end

	def update
		@order = Order.find(params[:id])
		@order.update(order_params)
		@order_items = @order.order_items

		if @order.status == '入金確認'
		    
		    @order_items.each do |order_item|
		    new_creat_status = '未着手'
		    order_item.update_attribute(:creat_status, new_creat_status)
		 	end
		else
			
		end

		redirect_to admins_order_path(@order.id)
	end

	private

	def order_params
		params.require(:order).permit(:end_user_id, :postal_code, :address, :name, :cost, :charge, :payment, :status)
	end
end
