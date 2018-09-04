# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  photo         :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ApplicationRecord
	mount_uploader :photo, PhotoUploader, dependent: :destroy
	belongs_to :restaurant
	has_many :comments, dependent: :destroy
	acts_as_votable
end
