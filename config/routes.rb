Rails.application.routes.draw do
  resources :entrances
  resources :buildings
  get 'map/search', to: 'map#search'
  get 'map/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'map#index'
end
