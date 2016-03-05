class ContactsController < ApplicationController
	
	def index
		#change this to only return contacts of particular user / organization
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def new
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to @contact
		else
			redirect_to root_path
		end

	end

	def edit
	end

	def update
	end

	def destroy
	end

private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :address)
  end

end
