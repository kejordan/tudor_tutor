class PostSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :program
end
