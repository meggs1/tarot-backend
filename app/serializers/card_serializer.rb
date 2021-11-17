class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :full_meaning, :upright_meaning, :reversed_meaning, :avatar
  belongs_to :arcana
  belongs_to :suit

  def image_url
    debugger
    return unless object.image_file.attached?
    object.image_file.blob.attributes
      .slice('filename')
      .merge(url: image_file.io)
  end

end
