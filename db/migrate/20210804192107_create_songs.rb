class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :artist_name
      t.string :album_name
      t.string :album_art_url
      t.string :song_url
      t.string :buy_link

      t.timestamps
    end
  end
end
