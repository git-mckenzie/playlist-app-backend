class CreatePlaylistSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :playlist_songs do |t|
      t.string :song_id
      t.string :playlist_id

      t.timestamps
    end
  end
end
