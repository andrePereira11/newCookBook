class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :difficulty
      t.string :cook_time
      t.text :ingredients
      t.text :cook_method

      t.timestamps
    end
  end
end
