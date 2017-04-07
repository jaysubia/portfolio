class ContactsController < ApplicationController
  def new
  @contact = Contact.new
  	
  end
  def show
  	@contact = Contact.find(params[:id])
  end 

  def create
 	# fail
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = @contact.errors.full_messages
      redirect_back(fallback_location: root_path)
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
