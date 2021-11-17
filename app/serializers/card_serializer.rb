class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_file, :full_meaning, :upright_meaning, :reversed_meaning, :avatar
  belongs_to :arcana
  belongs_to :suit

  def image_url
    return unless object.image_file.attached?
    object.image_file.blob.attributes
      .slice('filename')
      .merge(url: object.image_url)
  end

end
