class ListsController < ApplicationController

	def new
		@list = List.new
	end

	def create
		current_user.lists.create(list_params)
		redirect_to edit_path(current_list)
	end

	private

	def list_params
		parmas.require(:list).permit(:year)
	end

end
