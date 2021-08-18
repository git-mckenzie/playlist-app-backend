class SongSerializer < ActiveModel::Serializer
  attributes :id, :song_name, :artist_name, :album_name, :album_art_url, :song_url, :buy_link
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs
end
