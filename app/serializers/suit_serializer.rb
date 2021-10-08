class SuitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :arcana
  has_one :card
end
