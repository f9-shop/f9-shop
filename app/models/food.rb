class Food < ApplicationRecord

	mount_uploader :topimg, FoodpictureUploader
	mount_uploader :foodimg1, FoodpictureUploader
	mount_uploader :foodimg2, FoodpictureUploader
	mount_uploader :foodimg3, FoodpictureUploader

	validates :user_id, presence: true
    validates :amenu_id, presence: true
	validates :foodname1, presence: true

	belongs_to :user
  	belongs_to :amenu

end