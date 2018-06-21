class CreatePhotoUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_uploads do |t|
      t.text :image_data

      t.timestamps
    end
  end
end
