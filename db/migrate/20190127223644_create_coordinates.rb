class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.integer :coordinate_number, null: false
      t.string :english_word, null: false
      t.string :foreign_word, null: false
      t.belongs_to :route
      t.timestamps
    end
  end
end
