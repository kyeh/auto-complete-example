require "spec_helper"

describe TodoListsController do

	context '#index' do
		it 'should have success' do
			get :index

			expect(response).to be_ok
		end
	end

	context 'search helper' do
		it 'should return search results' do
			TodoListsController.any_instance.stub(:get_all_lists).and_return(["alex","brian","charlie"])
			get :search, q: 'al'
			expect(JSON.parse(response.body)).to eq(['alex'])
		end
	end
end
