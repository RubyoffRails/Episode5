require_relative "spec_helper"

describe Book do
	let!(:page) {Page.create(starting_point: true)}
	subject { Book.new(page) }

	it "should have a page" do
		subject.current_page.should eq(page)
	end

	describe "#input" do
		let!(:option_a) { Page.create(parent_id: page.id)}
		let!(:option_b) { Page.create(parent_id: page.id)}

		it "should receive input and opens page" do
			subject.input("A")
			subject.current_page.should eq(option_a)
		end

		it "should receive input and opens page" do
			subject.input("B")
			subject.current_page.should eq(option_b)
		end

    it "should still work with lower case inputs" do
      subject.input("a")
      subject.current_page.should eq(option_a)
    end

	end

	describe "#complete_game?" do

		it "should know when it's done" do
			subject.stub(:current_page) { stub(:conclusion? => true)}
			subject.complete_game?.should be_true
		end
	end
end
