class DropUserCardsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :user_cards
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
