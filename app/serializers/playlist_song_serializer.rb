class PlaylistSongSerializer < ActiveModel::Serializer
  attributes :playlist_id, :song_id
  belongs_to :playlist
  belongs_to :song
end
