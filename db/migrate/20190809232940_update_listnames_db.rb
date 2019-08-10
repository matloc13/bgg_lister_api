class UpdateListnamesDb < ActiveRecord::Migration[6.0]
  def change
    remove_column :listnames, :bggid, :img
  end
end
