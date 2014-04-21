require "spec_helper"

describe Task do 
	describe "Fields" do
		it "should have a description" do
			expect(subject).to respond_to :description
		end

		it "should have a list_id" do
			expect(subject).to respond_to :list_id
		end
	end
end