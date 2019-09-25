class AddCuisineToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :cuisine, foreign_key: true
  end
end
