class Post < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :restaurant
	has_many :comments
	acts_as_votable
end
