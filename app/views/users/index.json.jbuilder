json.array!(@users) do |user|
  json.extract! user, :id, :name, :topic
  json.url user_url(user, format: :json)
end
