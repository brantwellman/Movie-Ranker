class UsersController < ApplicationController

	def show
		@movies = User.find(params[:id]).movies
		@movies_year = @movies.group_by { |movie| movie.year }
		
	end

end
