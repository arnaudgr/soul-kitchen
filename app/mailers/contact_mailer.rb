class ContactMailer < ApplicationMailer

	def welcome(user)
 	  @user = user

 	  mail(to: @user.email, subject: "Bienvenue chez Soul Kitchen")
 	end

=begin A BOSSER SI TEMPS LE PERMET
 	def recipe (user, recipe)
      @user = user
      @recipe = recipe
    
	  mail( to: @user.email, subject: "Retrouvez votre recette #{@recipe.title}")
	end
=end
end