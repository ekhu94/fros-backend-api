Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :carts
      resources :items
      resources :users
      post '/login', to: 'auth#create'
      poet '/signup', to: 'users#create'
      get '/profile', to: 'users#profile'
    end
  end
end
