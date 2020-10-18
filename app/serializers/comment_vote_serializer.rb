class CommentVoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :comment_id, :upvote



  belongs_to :user
  belongs_to :comment
end
