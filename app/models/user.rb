class User < ApplicationRecord
    has_many :posts
    has_many :favorites
    has_many :favorited_posts, through: :favorites, source: :post
    has_many :comments
    has_many :commented_posts, through: :comments, source: :post 
    has_one_attached :avatar 
end
