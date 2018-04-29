class Asset < ApplicationRecord
  belongs_to :article

  validates :image, presence: true

  mount_uploader :asset, ImageUploader
end
