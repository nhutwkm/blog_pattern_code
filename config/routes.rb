Rails.application.routes.draw do
  root "users#index"

  #USER
  devise_for :users
  # get "users/list" , to: "users#list"
   get "/users/edit", to: "users#edit"
  resources :users  do #edit,show,index,delete
    get "edit"
    get "posts"
  end
  
  # POST
  resources :posts do #edit,show,index,delete
  resources :commands
  end
  # get 'category_post', to: "category_post#index"
  resources :category_post do 
   get 'category_post', to: "category_post#category_post"
  end


    # post '/index', to: "category_post#index" 

  post 'category_posts', to: "category_post#index"

  # CATEGORY
  post "categories/new", to: "categories#new"
  match 'users_posts', to: 'users#users_posts', via: [:post, :get]
  resources :categories do #edit,show,index,delete
    get '/Detail', to: 'categories#Detail'
    delete '/delete', to: 'categories#delete'
    post '/update', to: 'categories#update'
  end
end