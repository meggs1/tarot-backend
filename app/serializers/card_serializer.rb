class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :full_meaning, :upright_meaning, :reversed_meaning
end
