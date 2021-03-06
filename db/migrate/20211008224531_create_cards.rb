class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :image
      t.text :full_meaning
      t.string :upright_meaning
      t.string :reversed_meaning
      t.references :arcana, null: false, foreign_key: true
      t.references :suit, null: false, foreign_key: true

      t.timestamps
    end
  end
end