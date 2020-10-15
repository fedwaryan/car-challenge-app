class User < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader #define uploader for profile picture
  acts_as_follower # for folllowing user
  acts_as_followable 
  has_many :cars
  
  scope :all_except, ->(user) { where.not(id: user) }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
