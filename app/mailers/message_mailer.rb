class MessageMailer < ApplicationMailer

	default from: "charles.genestoux@gmail.com"
  
  def general_message(contact)
    @contact = contact
    mail( :to => "admin@example.com", :subject => "You Have a Message From Your Website")
  end

end




