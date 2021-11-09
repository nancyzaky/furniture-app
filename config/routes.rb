Rails.application.routes.draw do

  resources :users, only: [:create, :index] do
      resources :favorites, only: [:create]

  end
  resources :carts, only: [:create, :show, :update]
  resources :sessions, only: [:create]
  resources :products, only: [:show, :index]
#  get "/product/:cat", to: "products#getcat"
 delete "/logout", to: "sessions#destroy"

  get "/me", to: "users#show"
  delete "/favorites/:product_id/:user_id", to: "favorites#destroy"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
