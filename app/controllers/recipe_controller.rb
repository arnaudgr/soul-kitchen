class RecipeController < ApplicationController
  def index
=begin
  	response = HTTParty.post('https://gateway-syd.watsonplatform.net/text-to-speech/api',
    :header => {
        :things => [{myid: 1}, {id: 2}, {id: 3}],
    }.to_json,
    :headers => {
        'Content-Type' => 'application/json',
        'Accept' => 'audio/wav'
    }
     :data => '{
        "text": "Les bretons les meilleurs"}'
     :output => hello_world.wav
        {
        	"https://stream.watsonplatform.net/text-to-speech/api/v1/synthesize"
        }
    }
)

  	puts response
=end
  end

  def new
    @recipe = Recipe.create
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
    @recingredient = Recingredient.new
  end

  def add_ingredient
    puts params.inspect

    params.permit(:name, :quantity)
    ing = Ingredient.find_by(name: params[:name])
    @recipe = Recipe.last
    @recingredient = Recingredient.new
    @recingredient.recipe_id = @recipe.id
    @recingredient.ingredient_id = ing.id
    @recingredient.quantity = params[:quantity]
    if @recingredient.save
      respond_to do |format|
        format.js 
      end
    end

    @ingr = []
    Recingredient.where(recipe_id: @recingredient.recipe_id).each do |recin|
      @ingr << Ingredient.find(recin.ingredient_id).name
    end
    @ingr
  end

  def realcreate
    puts 'PARAAAAMMMMSSSS RECIPE CONTROLLER'
    puts params
    @recipe = Recipe.last
    @recipe.update(title: params[:recipe][:title])
    @recipe.update(step_1: params[:recipe][:step_1])
    @recipe.update(step_2: params[:recipe][:step_2])
    @recipe.update(step_3: params[:recipe][:step_3])
    @recipe.update(step_4: params[:recipe][:step_4])
    @recipe.update(step_5: params[:recipe][:step_5])
    @recipe.update(step_6: params[:recipe][:step_6])
    @recipe.update(step_7: params[:recipe][:step_7])
    @recipe.update(step_8: params[:recipe][:step_8])
    @recipe.update(step_9: params[:recipe][:step_9])
    @recipe.update(step_10: params[:recipe][:step_10])
    @recipe.update(step_11: params[:recipe][:step_11])
    @recipe.update(step_12: params[:recipe][:step_12])
    @recipe.update(step_13: params[:recipe][:step_13])
    @recipe.update(step_14: params[:recipe][:step_14])
    @recipe.update(step_15: params[:recipe][:step_15])
    @recipe.update(time: params[:recipe][:time])
    @recipe.update(image_url: params[:recipe][:image_url])
    @recipe.save 
     
    redirect_to root_path
    flash[:notice] = "Votre recette a bien été créé"
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :step_1, :step_2,  :step_3, :step_4, :step_5, :step_6, :step_7, :step_8, :step_9, :step_10, :step_11, :step_12, :step_13, :step_14, :step_15,
        :time, :image_url)
    end

end
