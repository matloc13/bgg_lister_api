class CreateHotlists < ActiveRecord::Migration[6.0]
  def change
    create_table :hotlists do |t|

      t.timestamps
    end
  end
end
