require "open-uri"

class Card < ApplicationRecord
    include Rails.application.routes.url_helpers 
    belongs_to :suit
    belongs_to :arcana

    has_one_attached :image_file
    

    has_attached_file :avatar



    validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def avatar_url
        URI.parse('https://tarotproject.s3.us-east-2.amazonaws.com/' + self.image_file.filename.to_s)
    end
    
end
 