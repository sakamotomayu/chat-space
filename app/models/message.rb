class Message < ApplicationRecord

  belongs_to :user
  belongs_to :group
  mount_uploader :image, ImageUploader

  validates_presence_of :text, :user_id, :group_id, :image

end
