class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :user
	def self.search(term)
	  if term
	    where('title LIKE ?', "%#{term}%")
	  else
	    all
	  end
	end
end
