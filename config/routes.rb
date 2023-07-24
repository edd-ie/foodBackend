Rails.application.routes.draw do
  root "fallback#index"
  get "*path", to: "fallback#error", constraints: ->(req) { !req.xhr? && req.format.html? }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end
