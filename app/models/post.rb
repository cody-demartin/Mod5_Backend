class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :commenters, through: :comments, source: :user
    has_many :favorites
    has_many :favoriters, through: :favorites, source: :user

end
