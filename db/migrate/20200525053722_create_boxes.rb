class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :place
      t.date :release

      t.timestamps
    end
  end
end
