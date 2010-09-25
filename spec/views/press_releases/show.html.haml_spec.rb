require 'spec_helper'

describe "press_releases/show.html.haml" do
  before(:each) do
    @press_release = assign(:press_release, stub_model(PressRelease,
      :title => "Title",
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Body".to_s)
  end
end
