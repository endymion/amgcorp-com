class VenuesController < ApplicationController
  before_filter :authenticate, :except => [:index]
  
  # GET /venues
  # GET /venues.xml
  def index

    session[:venue_type] = @venue_type = case request.url
    when /owned/
      'OwnedVenue'
    when /operated/
      'OperatedVenue'
    when /client/
      'ClientVenue'
    else
      'Venue'
    end

    @venues = Venue.where(:type=>@venue_type).order(:position).all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @venues }
    end
  end

  # GET /venues/1
  # GET /venues/1.xml
  def show
    venue = Venue.find(params[:id])

    redirect_to_venue_index(venue)
  end

  # GET /venues/new
  # GET /venues/new.xml
  def new
    @venue = Venue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @venue }
    end
  end

  # GET /venues/1/edit
  def edit
    @venue = Venue.find(params[:id])
  end

  before_filter :get_submitted_venue, :only => [:create, :update]
  def get_submitted_venue
    params[:venue] = params[:owned_venue] if params[:venue].blank?
    params[:venue] = params[:operated_venue] if params[:venue].blank?
    params[:venue] = params[:client_venue] if params[:venue].blank?
  end

  # POST /venues
  # POST /venues.xml
  def create        
    @venue = Venue.new(params[:venue])

    @venue.type = session[:venue_type]

    respond_to do |format|
      if @venue.save
        format.html { redirect_to(@venue, :notice => 'Venue was successfully created.') }
        format.xml  { render :xml => @venue, :status => :created, :location => @venue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @venue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /venues/1
  # PUT /venues/1.xml
  def update
    @venue = Venue.find(params[:id])

    respond_to do |format|
      if @venue.update_attributes(params[:venue])
        format.html { redirect_to(@venue, :notice => 'Venue was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @venue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.xml
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    respond_to do |format|
      format.html { redirect_to(venues_url) }
      format.xml  { head :ok }
    end
  end

  def up
    (@venue = Venue.find(params[:id])).move_higher
    redirect_to_venue_index(@venue)
  end
  def down
    (@venue = Venue.find(params[:id])).move_lower
    redirect_to_venue_index(@venue)
  end
  
  def redirect_to_venue_index(venue)
    path = case venue.class.to_s
    when 'OwnedVenue' then owned_venues_path
    when 'OperatedVenue' then operated_venues_path
    when 'ClientVenue' then client_venues_path
    else venues_path
    end

    redirect_to path
  end

end
