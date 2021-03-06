require "spec_helper"

describe PressReleasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "press" }.should route_to(:controller => "press_releases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/press/new" }.should route_to(:controller => "press_releases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/press/1" }.should route_to(:controller => "press_releases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/press/1/edit" }.should route_to(:controller => "press_releases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/press" }.should route_to(:controller => "press_releases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/press/1" }.should route_to(:controller => "press_releases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/press/1" }.should route_to(:controller => "press_releases", :action => "destroy", :id => "1")
    end
  end
end
