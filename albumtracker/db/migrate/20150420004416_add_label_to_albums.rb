class AddLabelToAlbums < ActiveRecord::Migration
  def change
     add_reference :albums, :label
  end
end
