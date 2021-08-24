class SongsController < ApplicationController
  # before_action :authenticate_user, except: [:show]
  before_action :authenticate_user

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

  # def show
  #   song = Song.find_by(id: params[:id])
  #   render json: song
  # end

  def update
    song_id = params["id"]
    song = Song.find(song_id)

    song.song_name = params["song_name"] || song.song_name
    song.artist_name = params["artist_name"] || song.artist_name
    song.album_name = params["album_name"] || song.album_name
    song.album_art_url = params["album_art_url"] || song.album_art_url
    song.song_url = params["song_url"] || song.song_url
    song.buy_link = params["buy_link"] || song.buy_link

    if song.save
      render json: song
    else
      render json: { errors: song.errors.full_messages }, status: 418
    end
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { message: "Song permanently deleted from the database." }
  end

  def lastsong
    song = Song.last
    render json: song
  end
end
