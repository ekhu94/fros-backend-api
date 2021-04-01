Rails.application.routes.draw do
  root 'welcome#index'
  namespace :api do
    namespace :v1 do
      resources :items
    end
  end
  namespace :api do
    namespace :v1 do
      resources :inventories
    end
  end
  namespace :api do
    namespace :v1 do
      resources :carts
          resources :users, only: [:create, :index]
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login' #* USE MAYBE?!
      get '/profile', to: 'users#profile'
    end
  end
end
