json.array!(@wines) do |wine|
  json.extract! wine, :id, :producer, :grape, :country, :region, :vintage, :price, :alcohol_percentage
  json.url wine_url(wine, format: :json)
end
