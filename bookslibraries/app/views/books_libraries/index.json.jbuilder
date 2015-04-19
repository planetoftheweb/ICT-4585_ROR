json.array!(@books_libraries) do |books_library|
  json.extract! books_library, :id, :book_id, :library_id
  json.url books_library_url(books_library, format: :json)
end
