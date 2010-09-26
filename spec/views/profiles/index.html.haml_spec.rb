require 'spec_helper'

describe "profiles/index.html.haml" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :name => "Name",
        :title => "Title",
        :subtitle => "Subtitle",
        :body => "Body"
      ),
      stub_model(Profile,
        :name => "Name",
        :title => "Title",
        :subtitle => "Subtitle",
        :body => "Body"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Subtitle".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Body".to_s, :count => 2)
  end
end
