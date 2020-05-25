class CreateRares < ActiveRecord::Migration[5.2]
  def change
    create_table :rares do |t|
      t.string :rarity

      t.timestamps
    end
  end
end
