class CreateAlbumsArtists < ActiveRecord::Migration
  def change
    create_table :albums_artists do |t|

      t.timestamps null: false
    end
  end
end
