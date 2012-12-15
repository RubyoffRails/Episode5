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

  it "has a preview" do
    page = Page.create(preview: "A light appears at the end of the road")
    Page.find(page.id).preview.should eq("A light appears at the end of the road")
  end

  it "knows if it's a winning page" do
    page = Page.create(winner: true)
    page.winner.should be_true
  end
   
  it "is not a winner by default" do
    Page.create.winner.should eq false
    # Page.create.winner.should be_false => this passes when it shouldn't.
    # What's the difference with eq false and be_false?
  end

	context "#options" do

		let(:option_a) { Page.create }
		let(:option_b) { Page.create }
    let(:page) { Page.create(option_a_id: option_a.id, option_b_id: option_b.id)  }

		it "should have options for the next pages" do
			expect(page.options).to eq [option_a.id, option_b.id]
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

end
