json.array!(@weeks) do |week|
  json.extract! week, :id, :week_number, :class_id, :wine_id
  json.url week_url(week, format: :json)
end
