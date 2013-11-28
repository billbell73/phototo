json.array!(@tags) do |tag|
  json.extract! tag, :content, :photo
  json.url tag_url(tag, format: :json)
end
