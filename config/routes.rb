Rails.application.routes.draw do

  # users routes
  get 'users/new'
  get 'users/index'
  post 'users/create'
  
  # passwords routes
  post 'passwords/create'
  get "passwords/new/:user_id", to: "passwords#new", as: "passwords_new"
  get "passwords/index/:user_id", to: "passwords#index", as: "passwords_index"

  root "users#index"
end
