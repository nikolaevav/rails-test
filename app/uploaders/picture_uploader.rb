class PictureUploader < BaseUploader
  include CarrierWave::MiniMagick

  process resize_to_fill: [300, 300]

  def extension_white_list
    %w(jpg jpeg png)
  end
end