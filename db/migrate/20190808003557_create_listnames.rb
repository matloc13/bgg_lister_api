class CreateListnames < ActiveRecord::Migration[6.0]
  def change
    create_table :listnames do |t|
      t.string :img
      t.integer :bggid

      t.timestamps
    end
  end
end
