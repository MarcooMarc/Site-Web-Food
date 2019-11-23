class Home < ApplicationRecord
	mount_uploader :photo1, PhotoUploader
	mount_uploader :photo2, PhotoUploader
	mount_uploader :photo3, PhotoUploader
end
