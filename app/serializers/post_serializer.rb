class PostSerializer < ActiveModel::Serializer
  attributes :title, :id
  has_one :user
  has_many :comments
end
