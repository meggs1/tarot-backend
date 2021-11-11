class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :is_admin
end
