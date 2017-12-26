class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	has_many :votes


	validates :text, presence: true
	validates :text, length: { in: 4..256 }
end
