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

  describe "instance methods" do
      subject {Page.create}
      let(:option_a) {Page.create(parent_id: subject.id, content: 'Go to the store', win: true) }
      let(:option_b) {Page.create(parent_id: subject.id, content: 'Take a nap') }
      let(:option_c) {Page.create(parent_id: subject.id)  }

    context "#options" do
      it "should have options for the next pages" do
        subject.options.should eq([option_a, option_b])
      end
    end

    context "#preview" do
      it "should show preview" do
        option_a.preview.should eq('You Go to the store...')
      end
    end
  end

  it "should not be a winning page by default" do
    a_page = Page.create
    a_page.win?.should_not be_true
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
