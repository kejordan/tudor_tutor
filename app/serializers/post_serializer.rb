class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :post_content
  has_one :program
end
