Rails.application.routes.draw do
  resources :appointments
  resources :profiles
  resources :medicaments
  resources :diseases
  resources :recipes
  devise_for :users

  root 'recipes#index'
end
