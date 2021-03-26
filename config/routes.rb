Rails.application.routes.draw do
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
          resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
