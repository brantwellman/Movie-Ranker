class ListsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit]

	def new
		@list = List.new
	end

	def create
		@list = current_user.lists.create(list_params)
		redirect_to edit_list_path(@list)
		#begin
		#	@list.create
		#rescue ActiveRecord::RecordNotUnique => e
		#	if e.message == 'Validation failed: You have already created a list for that year' 
		#		render :new, :status => :unprocessable_entity
		#	elsif @list.valid?
		#		redirect_to edit_list_path(@list)
		#	end
		#end
	end

	def edit
		@list = List.find(params[:id])
		@movie = Movie.new
	end

	def destroy

	end

	private

	def list_params
		params.require(:list).permit(:year)
	end

end
