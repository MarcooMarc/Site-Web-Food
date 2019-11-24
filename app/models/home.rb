class Home < ApplicationRecord
	mount_uploader :photo1_home_page, PhotoUploader
	mount_uploader :photo2_home_page, PhotoUploader
	mount_uploader :photo3_home_page, PhotoUploader
	mount_uploader :photo_commande_index, PhotoUploader
	mount_uploader :photo_commande_new, PhotoUploader
	mount_uploader :photo_parcours, PhotoUploader
	mount_uploader :photo_contact, PhotoUploader

end