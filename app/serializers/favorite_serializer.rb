class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user_id

  belongs_to :post
  belongs_to :user
end
