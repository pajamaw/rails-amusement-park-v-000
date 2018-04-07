Rails.application.routes.draw do
  resources :users

  get '/signup', to: 'sessions#signup'
  get '/signin', to: 'sessions#signin', as: 'signin'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'welcome#home'
end
