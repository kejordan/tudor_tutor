class UserProgramSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :program
end
