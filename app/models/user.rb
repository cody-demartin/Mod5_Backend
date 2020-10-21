class User < ApplicationRecord
    has_secure_password

    has_many :posts
    has_many :favorites
    has_many :favorited_posts, through: :favorites, source: :post
    has_many :comments
    has_many :commented_posts, through: :comments, source: :post 
    has_many :votes
    has_many :voted_posts, through: :votes, source: :post 
    has_many :comment_votes
    has_many :comment_voters, through: :comment_votes, source: :user
    has_one_attached :avatar
end
