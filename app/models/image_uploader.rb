class ImageUploader < Shrine 

  plugin :determine_mime_type


  Attacher.validate do
    validate_max_size 10.megabyte, message: "is too large (max is 10 MB)"
    validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png']
  end
end