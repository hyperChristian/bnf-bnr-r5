class Section < ApplicationRecord
  	belongs_to :post

  	scope :ordered, -> { order(id: :asc) }

  	#test scope
  	#scope :ordered, -> { where(:title => "Lenker") }
  
end


