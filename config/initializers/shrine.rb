require "shrine"

s3_options = {
    access_key_id:      ENV['S3_KEY'],
    secret_access_key:  ENV['S3_SECRET'],
    region:             ENV['S3_REGION'],
    bucket:             ENV['S3_BUCKET']
}
require "shrine/storage/s3"

  Shrine.storages = {
  cache: Shrine::Storage::S3.new(prefix: "cache", upload_options: { acl: "public-read" }, **s3_options),
  store: Shrine::Storage::S3.new(prefix: "store", upload_options: { acl: "public-read" }, **s3_options)
}


# Shrine.storages = {
#   cache: Shrine::Storage::S3.new(prefix: "cache", upload_options: { acl: "public-read" }, **s3_options),
#   store: Shrine::Storage::S3.new(prefix: "store", upload_options: { acl: "public-read" }, **s3_options)
# }

# ...
Shrine.plugin :validation_helpers
Shrine.plugin :logging, logger: Rails.logger
Shrine.plugin :default_url_options, cache: { public: true }, store: { public: true }
Shrine.plugin :activerecord # or :activerecord
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplays
# Shrine.plugin :presign_endpoint # provides a Rack endpoint which generates presigned JSON data