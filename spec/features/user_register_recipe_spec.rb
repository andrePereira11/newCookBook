require 'rails_helper'

feature 'user register recipe' do
  scenario 'successfully' do
    recipe_type = RecipeType.create(name:'Sobremesa')
    cuisine = Cuisine.create(name:'Brasileira')

    visit root_path

    click_on 'Cadastrar Receita'

    fill_in 'Título', with: 'Pudim'
    select recipe_type.name, from: 'Tipo da Receita'
    select cuisine.name, from: 'Cozinha'
    fill_in 'Dificuldade', with: 'Fácil'
    fill_in 'Tempo de Preparo', with: '45'
    fill_in 'Ingredientes', with: 'leite condensado'
    fill_in 'Como Preparar', with: 'Misturar tudo e servir.'

    click_on 'Enviar'

    expect(page).to have_css('h1', text: 'Pudim')
    expect(page).to have_css('h3', text: 'Detalhes')
    expect(page).to have_css('p', text: 'Brasileira')
    expect(page).to have_css('p', text: 'Sobremesa')
    expect(page).to have_css('p', text: 'Fácil')
    expect(page).to have_css('p', text: '45 minutos')
    expect(page).to have_css('p', text:  'leite condensado')
    expect(page).to have_css('p', text: 'Misturar tudo e servir.')
  end

  scenario 'verify empty fields' do
  end


end