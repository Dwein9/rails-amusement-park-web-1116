Rails.application.routes.draw do
  root 'welcomes#home'
  # resources :users
  # resources :sessions
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/sessions', to: 'sessions#create'
  get '/sessions/destroy', to: 'sessions#destroy', as: 'logout'

  get '/users/new', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users/:id', to: 'users#update', as: 'update_user'

  resources :attractions
  # get '/attractions', to: 'attractions#index'
  # get '/attractions/:id', to: 'attractions#show'
  # get '/attractions/new', to: 'attractions#new'
  # post '/attractions', to: 'attractions#create'
end
