class TodoListsController < ApplicationController

	def search

	end

	def index 
		@lists = get_all_lists
	end

	private

	def get_all_lists
		list = ["alex", "amanda", "alexis", "animal", "butler", "buddy", "cathy", "carl", "doug", "donnie"]
	end
end