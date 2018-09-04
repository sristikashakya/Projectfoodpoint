class Message < ApplicationRecord
  belongs_to :restaurant
  belongs_to :conversation
end
