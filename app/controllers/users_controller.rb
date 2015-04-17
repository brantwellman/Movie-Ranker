class UsersController < ApplicationController

	def show
		@movies = User.find(params[:id]).movies
		@movie_years = @movies.group_by { |movie| movie.year }
		@lists = User.find(params[:id]).lists
		@user = User.find(params[:id])
	end



end
