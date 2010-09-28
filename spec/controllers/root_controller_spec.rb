require 'spec_helper'

describe RootController do

  it "has a home page" do
    get :home
    response.should be_success
  end

  it "has an about us page" do
    get :about_us
    response.should be_success
  end

  it "has a contact page" do
    get :contact
    response.should be_success
  end

end
