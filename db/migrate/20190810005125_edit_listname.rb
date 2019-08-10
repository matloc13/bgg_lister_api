class EditListname < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :listnames_id, :listname_id
  end
end
