class RemoveDescriptionAndRatingFromMovies < ActiveRecord::Migration
  def up
  	remove_column :movies, :description
  	remove_column :movies, :rating
  end

  def down
    remove_column :movies, :description, :string
    remove_column :movies, :rating, :integer
  end
end
