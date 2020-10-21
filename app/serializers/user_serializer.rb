class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :email, :avatar

  def avatar
    return unless object.avatar.attached?

    object.avatar.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.avatar)
  end

  has_many :posts
  has_many :comments
  has_many :commented_posts
  has_many :favorites
  has_many :favorited_posts
  has_many :votes 
  has_many :voted_posts
end
