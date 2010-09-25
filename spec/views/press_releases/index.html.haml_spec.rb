require 'spec_helper'

describe "press_releases/index.html.haml" do
  before(:each) do
    assign(:press_releases, [
      stub_model(PressRelease,
        :title => "Title",
        :body => "Body"
      ),
      stub_model(PressRelease,
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of press_releases" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Body".to_s, :count => 2)
  end
end
