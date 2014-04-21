class TodoListsController < ApplicationController

	def search
		binding.pry
		lists = get_all_lists
		answers = lists.select{ |w| w.starts_with?(params[:q]) }
		render json: answers
	end

	def index 
		@lists = get_all_lists
	end

	private

	def get_all_lists
		list = ["alex", "amanda", "alexis", "animal", "butler", "buddy", "cathy", "carl", "doug", "donnie"]
	end
end