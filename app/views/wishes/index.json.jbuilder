json.array!(@wishes) do |wish|
  json.extract! wish, :id, :title, :picture, :description, :url
  json.url wish_url(wish, format: :json)
end
