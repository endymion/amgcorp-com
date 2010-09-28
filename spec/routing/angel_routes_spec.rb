
describe "Angel Main Site Routing" do

  it "has a homepage" do
    { :get => "/" }.should route_to(:controller => "root", :action => "home")
  end

  it "has an about us" do
    { :get => '/about_us'}.should route_to(:controller => "root", :action => "about_us")
  end

  it "has a profiles page" do
    { :get => '/all_profiles'}.should route_to(:controller => "root", :action => "profiles")
  end

  it "has a owned venues" do
    { :get => '/owned_venues'}.should route_to(:controller => "root", :action => "owned_venues")
  end

  it "has operated venues" do
    { :get => 'operated_venues'}.should route_to(:controller => "root", :action => "operated_venues")
  end

  it "has client venues" do
    { :get => "client_venues"}.should route_to(:controller => "root", :action => "client_venues")
  end

  it "has services" do
    { :get => "services"}.should route_to(:controller => "root", :action => "services")
  end

  it "has contact" do
    { :get => "contact"}.should route_to(:controller => "root", :action => "contact")
  end

  it "has press" do
    { :get => "press"}.should route_to(:controller => "root", :action => "press")
  end
end
