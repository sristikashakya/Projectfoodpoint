class Restaurant < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         mount_uploader :photo, PhotoUploader
   include PgSearch 
  has_many :posts
  has_many :comments
  acts_as_voter
  
  pg_search_scope :search, against: [:name]
end
