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
    if user_signed_in?
      @recipe = Recipe.create
      @ingredient = Ingredient.new
      @ingredients = Ingredient.all
      @recingredient = Recingredient.new
      @categories = Category.all
    end
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
    @recipe.update(timeprep: params[:recipe][:timeprep])
    @recipe.update(timecook: params[:recipe][:timecook])
    @recipe.update(image_url: params[:recipe][:image_url])

    @categorecipe1 = Categorecipe.new
    @categorecipe1.recipe_id = @recipe.id
    @categorecipe1.category_id = Category.find_by(name: params[:recipe][:categories][:cateone]).id
    @categorecipe1.save

    @categorecipe2 = Categorecipe.new
    @categorecipe2.recipe_id = @recipe.id
    @categorecipe2.category_id = Category.find_by(name: params[:recipe][:categories][:catetwo]).id
    @categorecipe2.save
     
    redirect_to root_path
    flash[:notice] = "Votre recette a bien été créée"
  end

  def show
    puts params
    @recipe = Recipe.find(params[:id])
    @i = 1

    @ingr = []

    @reviews = Review.where(recipe_id: @recipe.id).order("created_at DESC")

    unless @reviews.present?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).present? ? @reviews.average(:rating).round(2) : 0
    end
    
  end

  def search
    
    @recipes1 = Recipe.all
    @recipes = []
    if params[:search]
      params[:search].split.each do |s|
        @recipes1 = Recipe.search(s).order("created_at DESC") + Recipe.search(s.capitalize).order("created_at DESC") + Recipe.search(s.downcase).order("created_at DESC")
        @recipes1.each do |ss|
          @recipes << ss
        end
      end
    else
      @recipes1 = Recipe.all.order("created_at DESC")
      @steps = Step.all.order("created_at DESC")
    end
    @recipes = @recipes.uniq

  end
 

  private

    def recipe_params
      params.require(:recipe).permit(:title, :timeprep, :timecook, :image_url)
    end

end