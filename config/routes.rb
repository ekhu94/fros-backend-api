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
          resources :users, only: [:create, :index]
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      get '/user_is_authed', to: 'auth#user_is_authed'
    end
  end
end
