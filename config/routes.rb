Rails.application.routes.draw do


  root 'static#about'
  delete '/signout' => "sessions#destroy"
  get '/signin' => "sessions#new"
  post '/signin' => "sessions#create"
  delete '/signout' => "sessions#destroy"
  post '/ride' => "rides#create"
  resources :sessions
  resources :attractions
  resources :users


end