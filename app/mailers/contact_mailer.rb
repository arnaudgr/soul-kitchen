class ContactMailer < ApplicationMailer

	def welcome(user)
 	  @user = user

 	  mail(to: @user.email, subject: "Bienvenue chez Soul Kitchen")
 	end

 	def subscriber_mailer
      @subscriber = Subscriber.all
      @lastrecipe = Recipe.last(5)
      emails = @subscriber.lastrecipe(&:email).join(", ")
      mail(to: emails, subject: "Retrouvez nos dernières actualités fumantes")
 	end
 end