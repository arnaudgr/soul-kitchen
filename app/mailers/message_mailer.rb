class MessageMailer < ApplicationMailer

	default from: "soul.kitchen.rennes@gmail.com"
  
  def general_message(contact)
    @contact = contact
    mail( :to => "soul.kitchen.rennes@gmail.com", :subject => "You Have a Message From Your Website")
  end

end




