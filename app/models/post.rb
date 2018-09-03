class Post < ApplicationRecord
	mount_uploader :photo, PhotoUploader, dependent: :destroy
	belongs_to :restaurant, dependent: :destroy
	has_many :comments
	acts_as_votable
end
