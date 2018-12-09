class UserController < ApplicationController

	# after_create :send_welcome_email

	def index

		@user = User.new
	    @category = Category.new
	    @categories = Category.all
	    @usercategory = UserCategorieRecipe.new

	end

	def create

		puts params

	end

	private

  	def send_welcome_email
    	ContactMailer.welcome(self).deliver.now
    end
end
