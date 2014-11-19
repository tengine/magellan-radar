json.array!(@histories) do |history|
  json.extract! history, :id, :user_id, :latitude, :longitude
  json.url history_url(history, format: :json)
end
