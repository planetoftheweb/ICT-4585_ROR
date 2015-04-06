class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :albumtitle
      t.string :genre
      t.integer :yearreleased
      t.date :dateadded

      t.timestamps null: false
    end
  end
end
