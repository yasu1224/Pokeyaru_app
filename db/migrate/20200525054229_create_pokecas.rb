class CreatePokecas < ActiveRecord::Migration[5.2]
  def change
    create_table :pokecas do |t|
      t.string :image
      t.string :name
      t.text :detail
      t.string :price
      t.references :box, foreign_key: true
      t.references :genre, foreign_key: true
      t.references :rare, foreign_key: true

      t.timestamps
    end
  end
end
