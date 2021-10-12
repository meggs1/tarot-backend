class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :card_ids
end
