class AddMusicUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :music_url, :string
  end
end
