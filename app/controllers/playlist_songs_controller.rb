class PlaylistSongsController < ApplicationController
  def index
    playlist = PlaylistSong.where(playlist_id: params[:id])
    render json: playlist
  end
end
