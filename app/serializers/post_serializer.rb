class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :user_id, :title, :score, :body, :request

  def request
    return unless object.request.attached?

    object.request.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.request)
  end

  belongs_to :user
  has_many :favorites
  has_many :comments
  has_many :commenters
  has_many :favoriters
  has_many :votes
  has_many :voters
end
