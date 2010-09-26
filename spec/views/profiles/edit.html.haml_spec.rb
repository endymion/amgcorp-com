require 'spec_helper'

describe "profiles/edit.html.haml" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :new_record? => false,
      :name => "MyString",
      :title => "MyString",
      :subtitle => "MyString",
      :body => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    rendered.should have_selector("form", :action => profile_path(@profile), :method => "post") do |form|
      form.should have_selector("input#profile_name", :name => "profile[name]")
      form.should have_selector("input#profile_title", :name => "profile[title]")
      form.should have_selector("input#profile_subtitle", :name => "profile[subtitle]")
      form.should have_selector("input#profile_body", :name => "profile[body]")
    end
  end
end
