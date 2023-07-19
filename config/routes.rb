Rails.application.routes.draw do

  resources :users, only: [:index, :create, :update, :destroy]
  resources :projects
  resources :tasks
  
  resources :sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#delete"

  get "/me", to: "users#show"

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
