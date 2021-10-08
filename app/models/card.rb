class Card < ApplicationRecord
    belongs_to :suit
    belongs_to :arcana

    has_many :user_cards
    has_many :users, through: :user_cards
end
