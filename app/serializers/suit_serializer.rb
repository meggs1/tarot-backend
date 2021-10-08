class SuitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :arcana

end

