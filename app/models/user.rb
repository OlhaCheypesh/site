class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         has_many :postcomments
         has_many :votes
                  has_many :post1s
         has_many :postcomments1
                  has_many :vote1s
                  has_many :post2s
         has_many :postcomment2s
                  has_many :vote2s

 validates :nickname, :email, :password_confirmation, :password, presence: true
 validates :nickname, :email, uniqueness: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
