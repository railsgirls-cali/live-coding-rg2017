Rails.application.routes.draw do
  resources :appointments
  resources :profiles
  resources :medicaments
  resources :diseases
  resources :recipes
  resources :users
  devise_for :users
  get '/doctors' => 'users#doctors'

  root 'recipes#index'
end
