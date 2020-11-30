class Creaters::ProfilesController < ApplicationController

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
