class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager
    resize_to_fit(300, 300)
    cloudinary_transformation :quality => 80
  end

  version :list_item do
    eager
    resize_to_fit(150, 150)
    cloudinary_transformation :quality => 80
  end
end
