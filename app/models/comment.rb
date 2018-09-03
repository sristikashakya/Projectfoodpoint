class Comment < ApplicationRecord
	belongs_to :post, dependent: :destroy
	belongs_to :restaurant, dependent: :destroy
	validates :text, :restaurant_id, :post_id, presence: true

end
