class Document < ApplicationRecord
  belongs_to :post

  validates :title, presence: true
  validates :description, presence: true
  validates :document, presence: true

  mount_uploader :document, DocumentUploader
end
