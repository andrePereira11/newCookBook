class Api::V1::RecipesController < Api::V1::ApiController
  skip_before_action :verify_authenticity_token

  def index
  end

  def show
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save!
      render json:@recipe, status:201
    end
  rescue ActiveRecord::RecordInvalid
    render json: 'Receita não salva', status:404
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,:difficulty,:cook_time,:ingredients,:cook_method,:recipe_type_id,:cuisine_id)
  end
end