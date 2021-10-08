class Suit < ApplicationRecord
  belongs_to :arcana
  belongs_to :card
end
