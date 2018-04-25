class Post < ApplicationRecord


	has_ancestry
	has_many :post_tags, dependent: :destroy
	has_many :tags, through: :post_tags
	
	has_many :sections, dependent: :destroy
	has_many :galleries, dependent: :destroy
	has_many :links, dependent: :destroy
	has_many :documents, dependent: :destroy
  	belongs_to :moderator
  	belongs_to :category

  	validates :title, presence: true

	scope :published, -> { where(publish: true).order(id: :desc) }

	accepts_nested_attributes_for :sections, :allow_destroy => true, reject_if: proc { |attributes| attributes[:title].blank? }
	accepts_nested_attributes_for :galleries, reject_if: proc { |attributes| attributes[:title].blank? }
	accepts_nested_attributes_for :links, reject_if: proc { |attributes| attributes[:title].blank? }
	accepts_nested_attributes_for :documents, reject_if: proc { |attributes| attributes[:title].blank? }

	mount_uploader :image, ImageUploader

	def to_param
    	"#{id} #{title}".parameterize
  	end

  	def self.matching_title_or_content search
  		where("publish=true AND title ILIKE ? OR content ILIKE ? OR metatags ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  	end

  	def self.filter_by_tags param_tag
  		includes(:tags).where(publish: true, tags: {name: param_tag}).order(id: :asc)
  	end

end
