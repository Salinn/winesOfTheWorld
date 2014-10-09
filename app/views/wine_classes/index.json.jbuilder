json.array!(@wine_classes) do |wine_class|
  json.extract! wine_class, :id, :name, :meeting_time
  json.url wine_class_url(wine_class, format: :json)
end
