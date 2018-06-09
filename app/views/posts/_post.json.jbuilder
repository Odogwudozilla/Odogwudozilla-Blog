json.extract! post, :id, :title, :preview, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
