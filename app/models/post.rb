class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :commenters, through: :comments, source: :user
    has_many :favorites
    has_many :favoriters, through: :favorites, source: :user
    has_many :votes
    has_many :voters, through: :votes, source: :user

    has_one_attached :request
end
