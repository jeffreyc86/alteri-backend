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

  post "/requests", to: "requests#create"
  get "/requests/:id", to: "requests#show"
  get "/pendingrequests", to: "requests#pendingrequests"
  get "/usersrequests/:id", to: "requests#usersrequests"
  patch "/acceptrequest/:id", to: "requests#acceptrequest"




  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
