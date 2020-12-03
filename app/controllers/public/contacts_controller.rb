class Public::ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def check
		@contact = Contact.new
		@contact.name = params[:contact][:name]
		@contact.email = params[:contact][:email]
		@contact.title = params[:contact][:title]
		@contact.body = params[:contact][:body]
	end

	def create
		@contact = Contact.new(contact_params)
		@contact.save
		redirect_to thanks_path
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :title, :body)
	end


end
