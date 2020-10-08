class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :score, :body

  belongs_to :user
  has_many :favorites
  has_many :comments
  has_many :commenters
  has_many :favoriters
end
