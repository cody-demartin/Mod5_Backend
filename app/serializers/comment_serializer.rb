class CommentSerializer < ActiveModel::Serializer
  attributes :id, :score, :user_id, :post_id, :body 

  has_many :comment_votes
  belongs_to :post
  belongs_to :user
end
