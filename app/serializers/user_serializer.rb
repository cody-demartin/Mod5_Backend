class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :posts
  has_many :comments
  has_many :commented_posts
  has_many :favorites
  has_many :favorited_posts
  has_many :votes 
  has_many :voted_posts
end
