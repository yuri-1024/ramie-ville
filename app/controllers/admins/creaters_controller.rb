class Admins::CreatersController < ApplicationController

	before_action :authenticate_admin!

	def index
		@creaters = Creater.all
	end

	def show
		@creater = Creater.find(params[:id])
	end

	def edit
		@creater = Creater.find(params[:id])
	end

	def update
		@creater = Creater.find(params[:id])
		@creater.update(creater_params)
		redirect_to admins_creater_path(@creater.id)
	end

	private
	def creater_params
		params.require(:creater).permit(:name, :profile, :status)
	end



end
