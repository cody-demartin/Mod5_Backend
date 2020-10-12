class CommentSerializer < ActiveModel::Serializer
  attributes :id, :score, :user_id, :post_id, :body 

  belongs_to :post
  belongs_to :user
end
