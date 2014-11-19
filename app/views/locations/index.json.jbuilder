json.array!(@locations) do |location|
  json.extract! location, :id, :user_id, :latitude, :longitude
  json.url location_url(location, format: :json)
end
