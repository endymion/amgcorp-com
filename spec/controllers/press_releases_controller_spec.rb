require 'spec_helper'

describe PressReleasesController do

  before(:each) do 
    @credentials = ActionController::HttpAuthentication::Basic.encode_credentials(
      ENV['ADMIN_USERNAME'], ENV['ADMIN_PASSWORD'])
    request.env['HTTP_AUTHORIZATION'] = @credentials
  end

  def mock_press_release(stubs={})
    @mock_press_release ||= mock_model(PressRelease, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all press_releases as @press_releases" do
      PressRelease.stub(:all) { [mock_press_release] }
      get :index
      assigns(:all_press_releases).should eq([mock_press_release])
    end
  end

  describe "GET new" do
    it "assigns a new press_release as @press_release" do
      PressRelease.stub(:new) { mock_press_release }
      get :new
      assigns(:press_release).should be(mock_press_release)
    end
  end

  describe "GET edit" do
    it "assigns the requested press_release as @press_release" do
      PressRelease.stub(:find).with("37") { mock_press_release }
      get :edit, :id => "37"
      assigns(:press_release).should be(mock_press_release)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created press_release as @press_release" do
        PressRelease.stub(:new).with({'these' => 'params'}) { mock_press_release(:save => true) }
        post :create, :press_release => {'these' => 'params'}
        assigns(:press_release).should be(mock_press_release)
      end

      it "redirects to the created press_release" do
        PressRelease.stub(:new) { mock_press_release(:save => true) }
        post :create, :press_release => {}
        response.should redirect_to(press_release_url(mock_press_release))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved press_release as @press_release" do
        PressRelease.stub(:new).with({'these' => 'params'}) { mock_press_release(:save => false) }
        post :create, :press_release => {'these' => 'params'}
        assigns(:press_release).should be(mock_press_release)
      end

      it "re-renders the 'new' template" do
        PressRelease.stub(:new) { mock_press_release(:save => false) }
        post :create, :press_release => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested press_release" do
        PressRelease.should_receive(:find).with("37") { mock_press_release }
        mock_press_release.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :press_release => {'these' => 'params'}
      end

      it "assigns the requested press_release as @press_release" do
        PressRelease.stub(:find) { mock_press_release(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:press_release).should be(mock_press_release)
      end

      it "redirects to the press_release" do
        PressRelease.stub(:find) { mock_press_release(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(press_release_url(mock_press_release))
      end
    end

    describe "with invalid params" do
      it "assigns the press_release as @press_release" do
        PressRelease.stub(:find) { mock_press_release(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:press_release).should be(mock_press_release)
      end

      it "re-renders the 'edit' template" do
        PressRelease.stub(:find) { mock_press_release(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested press_release" do
      PressRelease.should_receive(:find).with("37") { mock_press_release }
      mock_press_release.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the press_releases list" do
      PressRelease.stub(:find) { mock_press_release }
      delete :destroy, :id => "1"
      response.should redirect_to(press_releases_url)
    end
  end

end
