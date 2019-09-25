class RecipesController < ApplicationController
  def index
    recipe_types = RecipeType.all
    cuisines = Cuisine.all
    recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe_types = RecipeType.all
    @cuisines = Cuisine.all
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      flash[:alert] = 'Todos os campos devem ser preenchidos'
      @recipe_types = RecipeType.all
      @cuisines = Cuisine.all
      render :new
    end
  end



  private

  def recipe_params
    params.require(:recipe).permit(:title,:difficulty,:cook_time,:ingredients,:cook_method,:recipe_type_id,:cuisine_id)
  end
end