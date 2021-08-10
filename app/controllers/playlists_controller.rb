class PlaylistsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    playlist = Playlist.all
    render json: playlist
  end

  def show
    playlist_id = params["id"]
    playlist = Playlist.find(playlist_id)
    render json: playlist
  end

  def create
    playlist = Playlist.new(
      user_id: params[:user_id],
      playlist_name: params[:playlist_name],
    )
    if playlist.save
      render json: { message: "Playlist created successfully" }, status: :created
    else
      render json: { errors: playlist.errors.full_messages }, status: :bad_request
    end
  end

  def update
    playlist_id = params[:id]
    playlist_id_int = playlist_id.to_i
    playlist = Playlist.find(playlist_id_int)
    user_playlist = playlist.user_id.to_i
    puts playlist_id
    puts playlist_id_int
    puts current_user.id
    puts playlist.user_id
    puts playlist.user_id.class
    # render json: { message: playlist.user_id }
    # render json: { message: current_user.id }

    if user_playlist == current_user.id
      # render json: { message: playlist.user_id }
      # render json: { message: current_user.id }

      playlist.playlist_name = params[:playlist_name] || playlist.playlist_name

      if playlist.save
        render json: playlist
      else
        render json: { errors: playlist.errors.full_messages }, status: 418
      end
    else
      render json: { errors: playlist.errors.full_messages }, status: 420
    end
  end
end
