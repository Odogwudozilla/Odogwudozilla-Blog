# == Schema Information
#
# Table name: photo_uploads
#
#  id         :integer          not null, primary key
#  image_data :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhotoUpload < ApplicationRecord
  include ImageUploader[:image]
end
