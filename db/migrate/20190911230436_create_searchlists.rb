class CreateSearchlists < ActiveRecord::Migration[6.0]
  def change
    create_table :searchlists do |t|

      t.timestamps
    end
  end
end
