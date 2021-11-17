require "open-uri"

class Card < ApplicationRecord
    include Rails.application.routes.url_helpers 
    belongs_to :suit
    belongs_to :arcana

    has_one_attached :image_file
    

    has_attached_file :avatar

    def image_url
        url_for(self.image_file)
    end

    # def avatar_from_url(url)
    #     self.avatar = URI.parse(url).open
    # end

    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
end
 