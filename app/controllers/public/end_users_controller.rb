class Public::EndUsersController < ApplicationController

	def show
		@end_user = current_end_user
	end

	def edit
		@end_user = current_end_user
	end

	def update
		@end_user = current_end_user
	end

	private

	def end_user_params
		params.require(:end_user).permit()
	end
end
