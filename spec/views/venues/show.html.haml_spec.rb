require 'spec_helper'

describe "venues/show.html.haml" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :type => "Type",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Type".to_s)
    rendered.should contain("Name".to_s)
  end
end
