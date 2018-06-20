Rails.application.routes.draw do
  resources :attractions
  resources :users
  
  root "static_pages#home"


  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  post "/rides/new", to: "rides#new"
end
