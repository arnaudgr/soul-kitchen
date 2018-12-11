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


	def show

    puts current_user.nil?

    if current_user.nil?
      flash[:danger] = "Tu ne peux voir les recettes si tu n'es pas connecté"
      redirect_to new_user_registration_path

    else

          if current_user.id.to_s == params[:id]
            @user = User.find(params[:id])
          else
            flash[:danger] = "tu ne peux accéder à cette page "
            redirect_to root_path
          end

    end

  end

	
end
