class PostSerializer < ActiveModel::Serializer
  attributes :title, :id
  has_one :user
end
