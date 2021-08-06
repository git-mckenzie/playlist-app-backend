class PlaylistsController < ApplicationController
  def create
    playlist = Playlist.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    if playlist.save
      render json: { message: "Playlist created successfully" }, status: :created
    else
      render json: { errors: playlist.errors.full_messages }, status: :bad_request
    end
  end
end
