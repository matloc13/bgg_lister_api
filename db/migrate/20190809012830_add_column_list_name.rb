class AddColumnListName < ActiveRecord::Migration[6.0]
  def change
    add_column :listnames, :title, :string 
  end
end
