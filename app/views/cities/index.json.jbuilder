json.array!(@cities) do |city|
  json.extract! city, :id, :country, :name
  json.url city_url(city, format: :json)
end
