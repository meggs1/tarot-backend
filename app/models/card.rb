class Card < ApplicationRecord
    belongs_to :suit
    belongs_to :arcana
end
