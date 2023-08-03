Rails.application.routes.draw do
  resources :m_pesas
  # root routes
  root "fallback#home"
  get "*path", to: "fallback#error", constraints: ->(req) { !req.xhr? && req.format.html? }

  # main routes
  resources :restaurant_reviews
  resources :food_reviews
  resources :orders
  resources :foods
  resources :order_tracks
  resources :staffs
  resources :inventories
  resources :loyalties
  resources :restaurants
  resources :customers
  resources :fav_foods
  resources :fav_restaurants
  

  # Auxiliary routes
  
  #### Customer
  get "/customer/orders/:id", to: "customers#orders"
  get "/customer/activeOrders/:id", to: "customers#activeOrders"
  post "/customer/order", to: "orders#create"
  
  get "/customer/favRes/:id", to: "customers#favRes"
  post "/customer/newRes/:id", to: "customers#newFavRes"
  
  get "/customer/favFoods/:id", to: "customers#favFoods"
  post "/customer/newFood/:id", to: "customers#newFavFood"
end
