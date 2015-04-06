json.array!(@albums) do |album|
  json.extract! album, :id, :album_title, :genre, :year_released, :date_added, :times_played
  json.url album_url(album, format: :json)
end
