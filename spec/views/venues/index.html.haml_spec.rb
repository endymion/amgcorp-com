require 'spec_helper'

describe "venues/index.html.haml" do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :type => "Type",
        :name => "Name"
      ),
      stub_model(Venue,
        :type => "Type",
        :name => "Name"
      )
    ])
  end

  it "renders a list of venues" do
    render
    rendered.should have_selector("tr>td", :content => "Type".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
