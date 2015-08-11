class Book < ActiveRecord::Base

  mount_uploader :image, PictureUploader

  default_scope { order(:title) }

  auto_html_for :about do
    simple_format
  end
end
