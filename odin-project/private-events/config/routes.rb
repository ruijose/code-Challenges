Rails.application.routes.draw do
  root "events#index"

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'logout'  => 'sessions#destroy'

  resources :users
  resources :events
  resources :sessions, only: [:new, :create, :destroy]
  resources :invites, only: [:create]
end
