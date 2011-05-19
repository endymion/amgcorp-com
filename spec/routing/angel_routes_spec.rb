
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
    public_owned_venues_path == '/owned_venues'
  end

  it "has operated venues" do
    public_operated_venues_path == "/operated_venues"
  end

  it "has client venues" do
    public_client_venues_path == "/client_venues"
  end

  it "has contact" do
    { :get => "contact"}.should route_to(:controller => "root", :action => "contact")
  end
  
  it "has press" do
    { :get => "press"}.should route_to(:controller => "press_releases", :action => "index")
  end
end
