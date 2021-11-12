require "open-uri"

class Card < ApplicationRecord
    include Rails.application.routes.url_helpers 
    belongs_to :suit
    belongs_to :arcana

    has_one_attached :image_file

    has_attached_file :avatar

    def image_url
        self.avatar.url
    end

    # def picture_from_url(url)
    #     self.avatar = open(url)
    #   end
    
end
 