
describe "Angel Main Site Routing" do

  it "has a homepage" do
    { :get => "/" }.should route_to(:controller => "root", :action => "home")
  end

  it "has an about us" do
    { :get => '/about_us'}.should route_to(:controller => "root", :action => "about_us")
  end

  it "has a profiles page" do
    { :get => '/profiles'}.should route_to(:controller => "profiles", :action => "index")
  end

  it "has a owned venues" do
    { :get => '/owned_venues'}.should route_to(:controller => "venues", :action => "index")
  end

  it "has operated venues" do
    { :get => 'operated_venues'}.should route_to(:controller => "venues", :action => "index")
  end

  it "has client venues" do
    { :get => "client_venues"}.should route_to(:controller => "venues", :action => "index")
  end

  it "has contact" do
    { :get => "contact"}.should route_to(:controller => "root", :action => "contact")
  end
  
  it "has press" do
    { :get => "press"}.should route_to(:controller => "press_releases", :action => "index")
  end
end
