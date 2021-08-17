Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users routes

  get "/users" => "users#index"
  get "users/:id" => "users#show"
  post "/users" => "users#create"
  patch "users/:id" => "users#update"
  # delete "users/:id" => "users#destroy"

  # songs routes

  # get "/songs" => "songs#index"
  # get "songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  patch "songs/:id" => "songs#update"  # updates status on playlist?
  delete "songs/:id" => "songs#destroy"

  # playlists routes

  get "/playlists" => "playlists#index"
  get "playlists/:id" => "playlists#show"
  post "/playlists" => "playlists#create"
  patch "playlists/:id" => "playlists#update" # updates details including active status
  delete "playlists/:id" => "playlists#destroy"

  # sessions routes

  post "/sessions" => "sessions#create"
end
