class ChangeUserIdToIntegerInPlaylists < ActiveRecord::Migration[6.1]
  def change
    change_column :playlists, :user_id, :integer, using: "user_id::integer"
  end
end
