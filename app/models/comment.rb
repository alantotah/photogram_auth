class Comment < ApplicationRecord

  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true

  belongs_to :photo
  belongs_to :user

  default_scope -> { order(created_at: :desc)}

end
