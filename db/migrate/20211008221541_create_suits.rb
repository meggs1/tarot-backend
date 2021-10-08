class CreateSuits < ActiveRecord::Migration[6.1]
  def change
    create_table :suits do |t|
      t.string :name
      t.text :description
      t.references :arcana, null: false, foreign_key: true

      t.timestamps
    end
  end
end
