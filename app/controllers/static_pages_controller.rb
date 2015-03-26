class StaticPagesController < ApplicationController
	def index
		@movies = Movie.all
		@sorted = @movies.sort { |a,b| b.year <=> a.year }
	end
end
