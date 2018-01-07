class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :user

	validates :title, presence: true
	validates :text, presence: true
	validates :user_id, presence: true
	validates :view, presence: true
	def self.search(term)
	  if term
	    where('title LIKE ?', "%#{term}%")
	  else
	  	all
	  end
	end
end
