class Postcomment < ApplicationRecord
	acts_as_votable
	belongs_to :user
	belongs_to :post

	validates :text, presence: true
	validates :text, length: { in: 4..256 }
end
@post = Post.new(:name => 'my post!')
@post.save

@post.liked_by @user
@post.votes_for.size # => 1