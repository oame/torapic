json.array!(@photos) do |photo|
  json.extract! photo, :id, :references, :expired_at
  json.url photo_url(photo, format: :json)
end
