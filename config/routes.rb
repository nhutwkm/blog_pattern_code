Rails.application.routes.draw do
  root "users#index"

  #USER
  devise_for :users
  get "users/list" , to: "users#list"
  resources :users  do #edit,show,index,delete
    get "edit"
  end
    
  # POST
  resources :posts do #edit,show,index,delete
    resources :commands
  end

  # CATEGORY
  post "categories/new", to: "categories#new"
  match 'users_posts', to: 'users#users_posts', via: [:post, :get]
  resources :categories do #edit,show,index,delete
    get '/Detail', to: 'categories#Detail'
    delete '/delete', to: 'categories#delete'
    post '/update', to: 'categories#update'
  end
end