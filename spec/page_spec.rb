require_relative "spec_helper"

describe Page do

	before(:each) do
		Page.delete_all
	end

	it "should know if it's at the end of the road" do
		page = Page.create(conclusion: true)
		page.conclusion?.should be_true
	end

	it "should have awesome content" do
		page = Page.create(content: "The fox and hound get along")
		Page.find(page.id).content.should eq("The fox and hound get along")
	end

	context "#options" do
		subject {Page.create}
		let(:option_a) {Page.create()  }
		let(:option_b) {Page.create()  }
		let(:subject) { Page.create(option_id_a: option_a.id, option_id_b: option_b.id)}

		it "should have options for the next pages" do
			subject.options.should eq([option_a, option_b])
		end
	end

	it "should not be a starting point by default" do
		Page.create.starting_point.should eq(false)
	end
	it "should not be a conclusion by default" do
		Page.create.conclusion.should eq(false)
	end


	it "should have a starting point" do
		the_page = Page.create(starting_point: true)
		Page.starting_point.should eq(the_page)
	end

	it "should not be a winner by default" do
		Page.create.winner.should eq(false)
	end

	it "should have a winner" do
		the_page = Page.create(winner: true)
		Page.winners.should eq([the_page])
	end

end
