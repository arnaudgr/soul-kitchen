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

    if current_user.nil?
      flash[:danger] = "Tu ne peux pas accéder à cette page si tu n'es pas connecté(e)"
      redirect_to new_user_registration_path

    else

          if current_user.id.to_s == params[:id]
            @user = User.find(params[:id])
          else
            flash[:danger] = "Tu ne peux accéder à cette page "
            redirect_to root_path
          end

    end

  end

	
end
