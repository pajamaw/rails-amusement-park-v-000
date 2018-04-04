Rails.application.routes.draw do
  resources :user, only: [:new, :create]
  root 'user#home'

#/signin

#attraction/show page

#/attractions
#/attractions/new
#{}/attractions/:id
#attractions/index
#attractions/show
#/attractions/1/edit
end
