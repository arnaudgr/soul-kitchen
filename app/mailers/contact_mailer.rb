class ContactMailer < ApplicationMailer

	def welcome(user)
 	  @user = user

 	  mail(to: @user.email, subject: "Bienvenue chez Soul Kitchen")
 	end

 	def newsletters
 	end


end