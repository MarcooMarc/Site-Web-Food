class Bento < ApplicationRecord
  mount_uploader :photo, PhotoUploader
   validates :description, length: { maximum: 650 }
end
