class UsersController < ApplicationController

	def show
		@movies = User.find(params[:id]).movies
		@movie_years = @movies.group_by { |movie| movie.year }
	end



end
