class Comment < ApplicationRecord
	belongs_to :post
	belongs_to :restaurant
	validates :text, :restaurant_id, :post_id, presence: true
end
