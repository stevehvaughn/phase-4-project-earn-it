Rails.application.routes.draw do
  
  resources :chores
  resources :child_chores
  resources :households
  resources :users
  post "/login", to: "sessions#create"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
