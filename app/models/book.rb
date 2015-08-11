class Book < ActiveRecord::Base

  mount_uploader :image, PictureUploader

  default_scope { order(:title) }
end
