require 'rails_helper'

describe 'api can register recipe' do
  it 'successfully' do
    recipe_type = RecipeType.create!(name:'Sobremesa')
    cuisine = Cuisine.create!(name:'Brasileira')

    post '/api/v1/recipes', params:{ recipe:{title:'Pudim', difficulty:'Fácil',cook_time:'50',
                                ingredients:'Leite condensado',cook_method:'Mistura tudo',
                                recipe_type_id: recipe_type.id, cuisine_id: cuisine.id}}

    json = JSON.parse(response.body, symbolize_names:true)

    expect(response.status).to eq 201
    expect(json[:title]).to eq 'Pudim'
  end
end