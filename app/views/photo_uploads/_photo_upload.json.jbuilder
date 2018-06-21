json.extract! photo_upload, :id, :image_data, :created_at, :updated_at
json.url photo_upload_url(photo_upload, format: :json)
json.image_url photo_upload.image_url