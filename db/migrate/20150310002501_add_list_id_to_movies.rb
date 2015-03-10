class AddListIdToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :list_id, :integer

  	add_index :movies, :list_id
  end
end
