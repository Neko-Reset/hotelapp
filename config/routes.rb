Rails.application.routes.draw do
  resources :hotels
  # get "rooms/index" => "rooms#index"
  # get "rooms/index2" => "rooms#index2"
  # get "rooms/new" => "rooms#new"
  # get "rooms/:id" => "rooms#show"
  # post "rooms/create" => "rooms#create"
  # get "rooms/:id/edit" => "rooms#edit"
  # post "rooms/:id/update" => "rooms#update"
  # post "rooms/:id/destroy" => "rooms#destroy"
  get "rooms/search" => "rooms#search"
  resources :rooms
  
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  # post "users/:id/update" => "users#update"
  # post "users/:id/destroy" => "users#destroy"
  # get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  # get "signup" => "users#new"
  # get "users/index" => "users#index"
  # get "users/:id" => "users#show"
  resources :users

  get "/" => "home#top"
end
