Rails.application.routes.draw do
  resources :appointments
  resources :profiles
  resources :medicaments
  resources :diseases
  resources :recipes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
