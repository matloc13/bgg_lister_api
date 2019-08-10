class RemoveImgInList < ActiveRecord::Migration[6.0]
  def change
    remove_column :listnames, :img
  end
end
