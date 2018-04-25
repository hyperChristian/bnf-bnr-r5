class Article < ApplicationRecord
  	belongs_to :category
  	belongs_to :moderator

	validates :title, presence: true

	#scope :published, -> { where(publish: true).order(id: :desc) }

	#scope :aktuelt, -> { where(publish: true AND category_id: '5').order(created_at: :desc) }

	mount_uploader :image, ImageUploader

	def to_param
    	"#{id} #{title}".parameterize
  	end

end
