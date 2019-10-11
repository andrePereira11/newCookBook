require 'rails_helper'

feature 'admin can create recipe type' do
  scenario 'successfully' do
    user = User.create(name:'Admin',password:'123456',admin:true)

    visit root_path

    click_on 'Cadastrar Tipo de Receita'
    fill_in 'name', with: 'Sobremesa'
    click_on 'Criar'

    expect(page).to have_css('h2', text: 'Sobremesa')
  end
end