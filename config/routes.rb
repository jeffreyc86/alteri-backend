Rails.application.routes.draw do
  resources :users
  resources :memberships
  resources :messages
  resources :conversations
  resources :requests
  resources :request_items
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
