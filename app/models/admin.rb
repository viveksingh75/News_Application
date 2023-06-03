class Admin < ApplicationRecord
  belongs_to :category
  has_many_attached :images
  mount_uploader :video, VideoUploader
 
  validates :City, presence: true, length: { minimum: 2 }
  validates :Author, presence: true, length: { minimum: 5 }
  validates :Title, presence: true, length: { minimum: 10 }
  validates :Short_Discription, presence: true, length: { minimum: 20 }
  validates :Full_Discription, presence: true, length: { minimum: 50 }
  validates :category_id, presence: true, length: { minimum: 1 }
 
end

