require 'rails_helper'

feature 'visitor_view_homepage' do
  xscenario 'admin view homepage' do
    user = User.create(name:'Godofredo',email:'admin@cookbook.com',password:'123456')

    visit root_path

    expect(page).to have_css('h1', text:'Cookbook')
    expect(page).to have_content('Olá Godofredo')
    expect(page).to have_content('Sair')
  end

  xscenario 'user view homepage' do
    user = User.create(name:'Antonio Nunes',email:'nuninho@cookbook.com',password:'123456')

    visit root_path

    expect(page).to have_content('Administrador')
    expect(page).to have_content('Sair')
  end
end