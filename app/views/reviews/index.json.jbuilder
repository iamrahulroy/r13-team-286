json.array!(@reviews) do |review|
  json.extract! review, :user_id, :link_id, :body
  json.url review_url(review, format: :json)
end
