class Creaters::ProfilesController < ApplicationController

	before_action :authenticate_creater!

	def show
	end

	def edit
		@creater = current_creater
	end

	def update
		@creater = current_creater
		@creater.update(creater_params)
		redirect_to creaters_profile_path(@creater.id)
	end

	private

	def creater_params
		params.require(:creater).permit(:name, :profile, :status)
	end
end
