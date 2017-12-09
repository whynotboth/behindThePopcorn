class Review < ApplicationRecord
#Mounts paperclip image
  has_attached_file :image
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  default_scope { order(title: :asc) }
end
