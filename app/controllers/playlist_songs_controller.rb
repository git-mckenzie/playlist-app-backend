class PlaylistSongsController < ApplicationController
  def index
    playlist = PlaylistSong.where(playlist_id: params["playlist_id"])
    render json: playlist
  end
end
