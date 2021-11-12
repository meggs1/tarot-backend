class AddAvatarToCards < ActiveRecord::Migration[6.1]
  def self.up
    add_attachment :cards, :avatar
  end

  def self.down
    remove_attachment :cards, :avatar
  end
end
