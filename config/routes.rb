Rails.application.routes.draw do
  resources :appointments
  resources :profiles
  resources :medicaments
  resources :diseases
  resources :recipes
  devise_for :users, skip: [:sessions]
    as :user do
      get 'signin', to: 'devise/sessions#new', as: :new_user_session
      post 'signin', to: 'devise/sessions#create', as: :user_session
      delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
    end

  resources :users#, only: [:index, :new]
  # get '/doctors' => 'users#doctors'

  root 'recipes#index'
end
