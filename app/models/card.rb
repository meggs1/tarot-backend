class Card < ApplicationRecord
    include Rails.application.routes.url_helpers 
    belongs_to :suit
    belongs_to :arcana

    has_one_attached :image_file

    has_attached_file :avatar

    def image_url
        url_for(self.image_file)
    end
end
 