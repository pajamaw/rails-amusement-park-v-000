Rails.application.routes.draw do
  resources :users
  resources :attractions, only: [:index, :show, :update, :new]

  get '/signup', to: 'sessions#signup'
  get '/signin', to: 'sessions#signin', as: 'signin'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/rides/new', to: 'rides#new'
  root 'welcome#home'
end
