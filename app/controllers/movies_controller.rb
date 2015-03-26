class MoviesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@movies = Movie.all
		@sorted = @movies.sort { |a,b| b.year <=> a.year }
	end

	def new
		@movie = Movie.new
	end

	def create
		current_user.movies.create(movie_params)
		redirect_to user_path(current_user)
	end

	def show
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :year)
	end

end
