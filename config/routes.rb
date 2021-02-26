Rails.application.routes.draw do

  resources :memberships
  resources :messages
  resources :conversations
  resources :requests
  resources :request_items
  resources :items

  get "/show", to: "users#show"
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
