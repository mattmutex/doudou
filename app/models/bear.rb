class Bear < ActiveRecord::Base

  mount_uploader :picture, PictureUploader

  validates :name, presence: {message: "ne doit pas être vide !!!"}
  validates :description, presence: {message: "ne doit pas être vide !!!"}

end
