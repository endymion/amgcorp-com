class PressReleasesController < ApplicationController
  before_filter :authenticate, :except => [:index]

  # GET /press_releases
  # GET /press_releases.xml
  def index
    @press_releases = PressRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @press_releases }
    end
  end

  # GET /press_releases/1
  # GET /press_releases/1.xml
  def show
    redirect_to :action => :index
  end

  # GET /press_releases/new
  # GET /press_releases/new.xml
  def new
    @press_release = PressRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @press_release }
    end
  end

  # GET /press_releases/1/edit
  def edit
    @press_release = PressRelease.find(params[:id])
  end

  # POST /press_releases
  # POST /press_releases.xml
  def create
    @press_release = PressRelease.new(params[:press_release])

    respond_to do |format|
      if @press_release.save
        format.html { redirect_to(@press_release, :notice => 'Press release was successfully created.') }
        format.xml  { render :xml => @press_release, :status => :created, :location => @press_release }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @press_release.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /press_releases/1
  # PUT /press_releases/1.xml
  def update
    @press_release = PressRelease.find(params[:id])

    respond_to do |format|
      if @press_release.update_attributes(params[:press_release])
        format.html { redirect_to(@press_release, :notice => 'Press release was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @press_release.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /press_releases/1
  # DELETE /press_releases/1.xml
  def destroy
    @press_release = PressRelease.find(params[:id])
    @press_release.destroy

    respond_to do |format|
      format.html { redirect_to(press_releases_url) }
      format.xml  { head :ok }
    end
  end
end
