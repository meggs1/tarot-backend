class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :card_ids, :is_admin
end
