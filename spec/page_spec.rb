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

	it "should have a preview" do
		page = Page.create(preview: "Awesome preview")
		Page.find(page.id).preview.should eq("Awesome preview")
	end

	context "#options" do
		subject {Page.create}
		let(:option_a) {Page.create(parent_id: subject.id)  }
		let(:option_b) {Page.create(parent_id: subject.id)  }
		let(:option_c) {Page.create(parent_id: subject.id)  }

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

end
