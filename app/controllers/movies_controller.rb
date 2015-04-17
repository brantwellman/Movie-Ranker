class MoviesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :destroy, :edit]

	def index
		@movies = Movie.all
		@sorted = @movies.sort { |a,b| b.year <=> a.year }
	end

	def new
		@movie = Movie.new
		@list = List.find(params[:id])
	end

	def create
		@list = List.find(params[:list_id])
		@list.movies.create(movie_params.merge(:user => current_user))
		redirect_to edit_list_path(@list)
	end

	def edit
	end

	def destroy
		@list = List.find(params[:list_id])
		@movie = Movie.find(params[:movie_id])
		@movie.destroy
		redirect_to edit_list_path(@list)
	end

	private

	def movie_params
		params.require(:movie).permit(:title)
	end

end
