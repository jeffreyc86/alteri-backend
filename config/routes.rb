Rails.application.routes.draw do

  resources :memberships
  resources :messages
  resources :conversations
  resources :requests
  resources :request_items

  get "/show", to: "users#show"
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  post "/googlelogin", to: "users#google_login"

  get "/items", to: 'items#index'



  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
