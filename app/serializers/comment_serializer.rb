class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body

  has_one :user, except: [:posts, :comments]
  has_one :post, except: [:user, :comments]
end
