Rails.application.routes.draw do
  root "users#index"

  #USER
  devise_for :users
  # get "users/list" , to: "users#list"
  get "users/edit", to: "users#edit"
  resources :users  do #edit,show,index,delete
  end
    
  # POST
  resources :posts do #edit,show,index,delete
    resources :commands
  end

  # CATEGORY
  post "categories/new", to: "categories#new"
  resources :categories do #edit,show,index,delete
    get '/Detail', to: 'categories#Detail'
    delete '/delete', to: 'categories#delete'
    post '/update', to: 'categories#update'
  end


end