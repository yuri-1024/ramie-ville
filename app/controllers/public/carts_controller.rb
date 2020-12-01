class Public::CartsController < ApplicationController

	def index
		@carts = Cart.all
	end

	def create
		@cart = Cart.new(cart_params)
		@cart.end_user_id =current_end_user.id
		@a = false
		current_end_user.carts.each do |cart|
			if @cart.item_id == cart.item_id
				new_amount = cart.amount + @cart.amount
				cart.update_attribute(:amount, new_amount)
				@a = true
				break
			end
		end
		unless @a
			@cart.save
		end
		redirect_to carts_path
	end

	def update
		@cart = Cart.find(params[:id])
		@cart.update(cart_params)
		redirect_to carts_path
	end

	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy
		redirect_to carts_path
	end

	def destroy_all
		@carts = Cart.all
		@carts.destroy_all
		redirect_to items_path
	end

	private

	def cart_params
		params.require(:cart).permit(:amount, :item_id)
	end

end
