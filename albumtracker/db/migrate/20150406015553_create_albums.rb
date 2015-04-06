class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album_title
      t.string :genre
      t.integer :year_released
      t.date :date_added
      t.integer :times_played

      t.timestamps null: false
    end
  end
end
