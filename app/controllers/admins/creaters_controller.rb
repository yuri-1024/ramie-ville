class Admins::CreatersController < ApplicationController

	def index
		@creaters = Creater.all
	end



end
