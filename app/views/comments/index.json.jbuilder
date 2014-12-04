json.array!(@comments) do |comment|
  json.extract! comment, :id, :wine_id, :user_id, :see, :smell, :swirl, :sip, :swallow, :savor
  json.url comment_url(comment, format: :json)
end
