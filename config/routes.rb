Rails.application.routes.draw do
  resources :fav_foods
  resources :fav_restaurants
  resources :foods
  resources :order_tracks
  resources :staffs
  resources :inventories
  resources :loyalties
  resources :restaurants
  resources :customers
  root "fallback#index"
  get "*path", to: "fallback#error", constraints: ->(req) { !req.xhr? && req.format.html? }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
