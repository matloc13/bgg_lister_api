class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :bggid
      t.string :name
      t.string :img
      t.integer :listnames_id

      t.timestamps
    end
  end
end
