class Dogpost < ActiveRecord::Base

  belongs_to :user
  mount_uploader :image, ImagesUploader
  default_scope -> { order(created_at: :desc) }


end
