# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  post_id       :integer
#  restaurant_id :integer
#  text          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Comment < ApplicationRecord
	belongs_to :post
	belongs_to :restaurant
	validates :text, :restaurant_id, :post_id, presence: true

end
