Rails.application.routes.draw do

  # users routes
  get 'users/new'
  get 'users/index'
  post 'users/create'
  
  # passwords routes
  get "passwords/index"
  get "passwords/new" 
  post 'passwords/create'

  # students routes
  get "students/index"
  get "students/new"
  post 'students/create'

  # employees routes
  get "employees/index"
  get "employees/new"
  post 'employees/create'

  # managers routes
  get "managers/index"  
  get "managers/new"
  post 'managers/create'

  # login routes
  get 'login/new'
  post 'login/create'
  # delete 'login/destroy'

  root "login#new"
end
