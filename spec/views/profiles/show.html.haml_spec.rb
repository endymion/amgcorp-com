require 'spec_helper'

describe "profiles/show.html.haml" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :name => "Name",
      :title => "Title",
      :subtitle => "Subtitle",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain("Title".to_s)
    rendered.should contain("Subtitle".to_s)
    rendered.should contain("Body".to_s)
  end
end
