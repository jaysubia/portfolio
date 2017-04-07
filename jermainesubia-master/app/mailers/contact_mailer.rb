class ContactMailer < ApplicationMailer
	default from: "jermainesubia@gmail.com"
  
  def contact_confirmation(contact)
  	@contact = contact
    mail(to: @contact.email, subject: "Thank you for reaching out!")
  end
end
