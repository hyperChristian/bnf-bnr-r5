class Link < ApplicationRecord
  belongs_to :post

  validates :title, presence:true
  validates :url, presence: true
end
