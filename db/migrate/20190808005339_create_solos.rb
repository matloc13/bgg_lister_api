class CreateSolos < ActiveRecord::Migration[6.0]
  def change
    create_table :solos do |t|

      t.timestamps
    end
  end
end
