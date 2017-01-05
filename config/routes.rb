Rails.application.routes.draw do

  get '/' => 'application#welcome', as: 'root'

  get '/users/new' => 'users#new', as: 'signup'
  get '/users/:id' => 'users#show', as: 'user'
  post '/users' => 'users#create'
  get '/users/:id/edit' => 'users#edit', as: 'user_edit'

  get '/signin' => 'sessions#new', as: 'signin'
  delete '/signout' => 'sessions#destroy', as: 'signout'
  post '/sessions' => 'sessions#create'

  resources :attractions


end
