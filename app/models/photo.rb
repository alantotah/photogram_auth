class Photo < ApplicationRecord

  validates :user_id, :presence => true
  validates :image, :presence => true
  validates :caption, :presence => true

  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  
end
