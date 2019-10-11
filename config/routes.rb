Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'recipes#index'

  resources :recipes
  resources :recipe_types

  #scope'/api/v1/' do
    #resources :recipes
  #end 
  namespace :api do
    namespace :v1 do
      resources :recipes
    end
  end

end
