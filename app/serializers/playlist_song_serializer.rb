class PlaylistSongSerializer < ActiveModel::Serializer
  attributes :id, :song
  belongs_to :playlist
  belongs_to :song
end
