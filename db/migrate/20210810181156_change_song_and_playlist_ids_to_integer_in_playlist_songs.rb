class ChangeSongAndPlaylistIdsToIntegerInPlaylistSongs < ActiveRecord::Migration[6.1]
  def change
    change_column :playlist_songs, :song_id, :integer, using: "song_id::integer"
    change_column :playlist_songs, :playlist_id, :integer, using: "playlist_id::integer"
  end
end
