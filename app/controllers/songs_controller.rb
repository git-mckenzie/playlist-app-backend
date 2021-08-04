class SongsController < ApplicationController
  def create
    song = Song.new(
      song_name: params[:song_name],
      artist_name: params[:artist_name],
      album_name: params[:album_name],
      album_art_url: params[:album_art_url],
      song_url: params[:song_url],
      buy_link: params[:buy_link],
    )
    if song.save
      render json: { message: "Song created successfully" }, status: :created
    else
      render json: { errors: song.errors.full_messages }, status: :bad_request
    end
  end
end
