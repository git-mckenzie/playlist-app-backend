class PlaylistSongsController < ApplicationController
  def index
    playlist = PlaylistSong.where(playlist_id: params[:id])
    render json: playlist
  end

  def create
    playlist_song = PlaylistSong.new(
      playlist_id: params[:playlist_id],
      song_id: params[:song_id],
      # status: "active",
    )

    if playlist_song.save
      render json: playlist_song
    else
      render json: { errors: playlist_song.errors.full_messages }, status: 422
    end
  end
end
