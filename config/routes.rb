Rails.application.routes.draw do

  resources :memberships
  resources :messages
  resources :conversations
  resources :request_items

  get "/users/:id", to: "users#info"
  get "/show", to: "users#show"
  post "/signup", to: "users#signup"
  post "/login", to: "users#login"
  post "/googlelogin", to: "users#google_login"
  patch "/updatelocation/:id", to: "users#updatelocation"


  get "/items", to: 'items#index'

  get "/pendingrequests", to: "requests#pendingrequests"
  post "/requests", to: "requests#create"
  get "/usersrequests/:id", to: "requests#usersrequests"
  

  post "/request_items", to: "request_items#create"



  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
