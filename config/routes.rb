Rails.application.routes.draw do

  # users routes
  get 'users/new'
  post 'users/create'
  
  # passwords routes
  get "passwords/index"
  get "passwords/new"
  
  root "users#index"
end
