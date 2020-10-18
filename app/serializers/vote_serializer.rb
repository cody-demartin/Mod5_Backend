class VoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :upvote

  belongs_to :user 
  belongs_to :post 
end
