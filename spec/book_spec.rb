require_relative "spec_helper"

describe Book do
	let!(:page) {Page.create(starting_point: true)}
	subject { Book.new(page) }

	it "should have a page" do
		subject.current_page.should eq(page)
	end

	describe "#complete_game?" do

		it "should know when it's done" do
			subject.stub(:current_page) { stub(:conclusion? => true)}
			subject.complete_game?.should be_true
		end
	end
end
