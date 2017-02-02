class Dogpost < ActiveRecord::Base

  belongs_to :user
  mount_uploader :image, ImagesUploader
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :comment, presence: true


end
