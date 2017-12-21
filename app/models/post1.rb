class Post1 < ApplicationRecord
	belongs_to :user
	 has_many :postcomments1
	 
	validates :title, length: { in: 1..30 }
	validates :body, length: { in: 10..5012 }
	validates :title, uniqueness: true
	validates :title, presence: true
	
end
