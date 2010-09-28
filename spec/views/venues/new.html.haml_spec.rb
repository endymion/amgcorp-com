require 'spec_helper'

describe "venues/new.html.haml" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :new_record? => true,
      :type => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new venue form" do
    render

    rendered.should have_selector("form", :action => venues_path, :method => "post") do |form|
      form.should have_selector("input#venue_type", :name => "venue[type]")
      form.should have_selector("input#venue_name", :name => "venue[name]")
    end
  end
end
