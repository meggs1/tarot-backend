class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :full_meaning, :upright_meaning, :reversed_meaning, :avatar_url
  belongs_to :arcana
  belongs_to :suit

  def image_url
    object.avatar_url
  end

end
