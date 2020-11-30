class Admins::ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def update
		@contact = Contact.find(params[:id])
		@contact.update(contact_params)
		redirect_to admins_contact_path(@contact.id)
	end

	private

	def contact_params
		params.require(:contact).permit(:status)
	end
end
