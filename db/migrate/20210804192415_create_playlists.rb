class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.string :user_id
      t.string :playlist_name

      t.timestamps
    end
  end
end
