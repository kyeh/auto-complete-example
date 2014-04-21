require "spec_helper"

describe List do

	describe "Fields" do
		it "should have a name" do
			expect(subject).to respond_to :name
		end
	end
end
