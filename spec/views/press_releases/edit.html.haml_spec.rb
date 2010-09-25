require 'spec_helper'

describe "press_releases/edit.html.haml" do
  before(:each) do
    @press_release = assign(:press_release, stub_model(PressRelease,
      :new_record? => false,
      :title => "MyString",
      :body => "MyString"
    ))
  end

  it "renders the edit press_release form" do
    render

    rendered.should have_selector("form", :action => press_release_path(@press_release), :method => "post") do |form|
      form.should have_selector("input#press_release_title", :name => "press_release[title]")
      form.should have_selector("input#press_release_body", :name => "press_release[body]")
    end
  end
end
