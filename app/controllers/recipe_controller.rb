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
    @recingredient = Recingredient.new
    @recingredient.recipe_id = Recipe.last.id
    @recingredient.ingredient_id = ing.id
    @recingredient.quantity = params[:quantity]
    @recipe = Recipe.last
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

  def create
    puts 'PARAAAAMMMMSSSS RECIPE CONTROLLER'
    puts params
    @recipe = Recipe.new
    @recipe.title = params[:recipe][:title]
    @recipe.step_1 = params[:recipe][:step_1]
    @recipe.step_2 = params[:recipe][:step_2]
    @recipe.step_3 = params[:recipe][:step_3]
    @recipe.step_4 = params[:recipe][:step_4]
    @recipe.step_5 = params[:recipe][:step_5]
    @recipe.step_6 = params[:recipe][:step_6]
    @recipe.step_7 = params[:recipe][:step_7]
    @recipe.step_8 = params[:recipe][:step_8]
    @recipe.step_9 = params[:recipe][:step_9]
    @recipe.step_10 = params[:recipe][:step_10]
    @recipe.step_11 = params[:recipe][:step_11]
    @recipe.step_12 = params[:recipe][:step_12]
    @recipe.step_13 = params[:recipe][:step_13]
    @recipe.step_14 = params[:recipe][:step_14]
    @recipe.step_15 = params[:recipe][:step_15]
    @recipe.time = params[:recipe][:time]
    @recipe.image_url = params[:recipe][:image_url]
    @recipe.save 
     
    redirect_to new_recipe_path
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :step_1, :step_2,  :step_3, :step_4, :step_5, :step_6, :step_7, :step_8, :step_9, :step_10, :step_11, :step_12, :step_13, :step_14, :step_15,
        :time, :image_url)
    end

end
