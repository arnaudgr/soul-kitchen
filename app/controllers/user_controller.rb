class UserController < ApplicationController


	def index

		@user = User.new
	    @category = Category.new
	    @categories = Category.all
	    @usercategory = UserCategorieRecipe.new

	end

	def create

		puts params

	end
end
