Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root 'welcome#home'

#/signin

#attraction/show page

#/attractions
#/attractions/new
#{}/attractions/:id
#attractions/index
#attractions/show
#/attractions/1/edit
end
