Rails.application.routes.draw do
  root "users#index"

  #USER
  devise_for :users
  # get "users/list" , to: "users#list"
   get "/users/edit", to: "users#edit"
  resources :users  do #edit,show,index,delete
    get "edit"
  end
    
  # POST
  resources :posts do #edit,show,index,delete
    resources :commands
  end

  # CATEGORY
  post "categories/new", to: "categories#new"
  resources :categories  #edit,show,index,delete


end