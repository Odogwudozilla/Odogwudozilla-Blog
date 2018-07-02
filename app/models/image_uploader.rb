class ImageUploader < Shrine
  plugin :determine_mime_type
  plugin :upload_endpoint if Rails.env.development? || Rails.env.test?
end