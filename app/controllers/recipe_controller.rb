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

  def add_step
    @recipe = Recipe.last
    @step = Step.new
    @step.recipe_id = @recipe.id
    @step.description = params[:description].gsub("@", ".").gsub("£", "/")
    if @step.save
      respond_to do |format|
        format.js
      end
    end

    @step_description = @step.description
  end

  def add_ingredient
    params.permit(:name, :quantity)
    ing = Ingredient.find_by(name: params[:name])
    @recipe = Recipe.last
    @recingredient = Recingredient.new
    @recingredient.recipe_id = @recipe.id
    @recingredient.ingredient_id = ing.id
    @recingredient.quantity = params[:quantity].gsub("@", ".").gsub("£", "/")
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
    @recipe = Recipe.last
    @recipe.update(title: params[:recipe][:title])
    @recipe.update(time: params[:recipe][:time])
    @recipe.update(image_url: params[:recipe][:image_url])
    @recipe.save 
     
    redirect_to root_path
    flash[:notice] = "Votre recette a bien été créée"
  end

  def show
    puts params
    @recipe = Recipe.find(params[:id])    
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :time, :image_url)
    end

end
