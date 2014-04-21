require "spec_helper"

describe "Home Page" do

	describe "Title content" do
		it "should show the words 'Todo Lists'" do
			visit root_path
			expect(page).to have_content "Todo Lists"
		end

		it "should show all of the todo lists created in the application" do

		end
	end
end

