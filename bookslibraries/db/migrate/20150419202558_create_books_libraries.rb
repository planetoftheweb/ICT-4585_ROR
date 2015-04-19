class CreateBooksLibraries < ActiveRecord::Migration
  def change
    create_table :books_libraries do |t|
      t.references :book, index: true, foreign_key: true
      t.references :library, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
