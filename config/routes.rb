Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users routes

  get "/users" => "users#index"
  get "users/:id" => "users#show"
  post "/users" => "users#create"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  # get "/users/:id/playlists" => "users#userplaylists"

  # songs routes

  get "/songs" => "songs#index"
  get "songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  patch "songs/:id" => "songs#update"  # updates status on playlist?
  delete "songs/:id" => "songs#destroy"

  get "/lastsong" => "songs#lastsong" # gets last song to create playlistsong relationship

  # playlists routes

  get "/playlists" => "playlists#index"
  get "/playlists/userplaylists" => "playlists#userplaylists"
  get "playlists/:id" => "playlists#show"
  post "/playlists" => "playlists#create"
  patch "playlists/:id" => "playlists#update" # updates details including active status
  delete "playlists/:id" => "playlists#destroy"

  get "/lastplaylist" => "playlists#lastplaylist"  # gets last playlist to create playlistsong relationship

  # playlistsongs routes

  get "/playlistsongs/:id" => "playlist_songs#index"
  post "/playlistsongs/" => "playlist_songs#create"

  # sessions routes

  post "/sessions" => "sessions#create"

  # create playlistsong

end
