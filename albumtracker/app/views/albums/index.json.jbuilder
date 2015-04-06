json.array!(@albums) do |album|
  json.extract! album, :id, :albumtitle, :genre, :yearreleased, :dateadded
  json.url album_url(album, format: :json)
end
