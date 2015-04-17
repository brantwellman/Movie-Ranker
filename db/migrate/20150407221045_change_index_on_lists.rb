class ChangeIndexOnLists < ActiveRecord::Migration
  def change
  	remove_index :lists, [:year, :user_id]
  	add_index :lists, [:year, :user_id], unique: true
  end
end
