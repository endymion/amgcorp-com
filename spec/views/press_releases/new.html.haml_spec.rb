require 'spec_helper'

describe "press_releases/new.html.haml" do
  before(:each) do
    assign(:press_release, stub_model(PressRelease,
      :new_record? => true,
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders new press_release form" do
    render

    rendered.should have_selector("form", :action => press_releases_path, :method => "post") do |form|
      form.should have_selector("input#press_release_title", :name => "press_release[title]")
      form.should have_selector("input#press_release_body", :name => "press_release[body]")
    end
  end
end
