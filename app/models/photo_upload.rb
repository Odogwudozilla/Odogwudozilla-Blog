class PhotoUpload < ApplicationRecord
  include ImageUploader[:image]
end
