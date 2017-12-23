class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

    acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         has_many :postcomments
                  has_many :posts1
         has_many :postcomments1
                  has_many :posts2
         has_many :postcomments2

 validates :nickname, :email, :password_confirmation, :password, presence: true
 validates :nickname, :email, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end


@user.likes @article

@article.votes.size # => 1
@article.likes.size # => 1
@article.dislikes.size # => 0