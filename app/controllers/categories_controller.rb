class CategoriesController < ApplicationController

	def show

		if params[:id] != ":id"
			@category = Category.find(params[:id])
		else
			@category = Category.find(params[:select_category])
		end

		@recipes = []
		Categorecipe.where(category_id: @category.id).each do |u|
			@recipes << Recipe.find_by(id: u.recipe_id)
		end
			
	end

end
