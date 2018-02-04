class Review < ApplicationRecord
#Mounts paperclip image
  has_attached_file :image
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     
                      :styles => 			{ 
                      							:thumb => "400x200#" },
                      :convert_options => 	{
    											:thumb => "-quality 75 -strip" }

  default_scope { order(release: :desc) }
end
