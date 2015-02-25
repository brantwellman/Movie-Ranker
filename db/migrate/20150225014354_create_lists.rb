class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.integer :year
    	t.text :description

    	t.integer :user_id
      t.timestamps
    end

    add_index :lists, :year
    add_index :lists, [:year, :user_id]
  end
end
