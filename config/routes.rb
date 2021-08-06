Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users routes

  post "/users" => "users#create"

  # songs routes

  post "/songs" => "songs#create"

  # playlists routes

  post "/playlists" => "playlists#create"

  # sessions routes

  post "/sessions" => "sessions#create"
end
