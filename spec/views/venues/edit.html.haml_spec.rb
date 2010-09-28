require 'spec_helper'

describe "venues/edit.html.haml" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :new_record? => false,
      :type => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    rendered.should have_selector("form", :action => venue_path(@venue), :method => "post") do |form|
      form.should have_selector("input#venue_type", :name => "venue[type]")
      form.should have_selector("input#venue_name", :name => "venue[name]")
    end
  end
end
