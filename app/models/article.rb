class Article < ApplicationRecord
  	belongs_to :category
  	belongs_to :moderator
  	has_many :assets
	validates :title, presence: true

	scope :published, -> { where(publish: true, :category_id => '5').order(created_at: :asc).limit(2) }

	scope :illustrasjon, -> { where(publish: true, :category_id => '8').order(title: :asc) }

	scope :digital, -> { where(publish: true, :category_id => '6').order(title: :asc) }

	scope :aktuelt, -> { where(publish: true, :category_id => '5').order(created_at: :desc) }

	scope :omoss, -> { where(publish: true, :category_id => '10') }

	accepts_nested_attributes_for :assets, reject_if: proc { |attributes| attributes[:image].blank? }

	mount_uploader :image, ImageUploader

	mount_uploader :document, DocumentUploader

	def to_param
    	"#{id} #{title}".parameterize
  	end

end
