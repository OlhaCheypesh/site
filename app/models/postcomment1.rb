class Postcomment1 < ApplicationRecord
	belongs_to :user
	belongs_to :post1
	has_many :vote1s

	validates :text, presence: true
	validates :text, length: { in: 4..256 }
end
