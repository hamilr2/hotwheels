class CastingsController < ApplicationController
  # GET /castings
  # GET /castings.xml
  def index
    @castings = Casting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @castings }
    end
  end

  # GET /castings/1
  # GET /castings/1.xml
  def show
    @casting = Casting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @casting }
    end
  end

  # GET /castings/new
  # GET /castings/new.xml
  def new
    @casting = Casting.new
    @manufacturers = Manufacturer.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @casting }
    end
  end

  # GET /castings/1/edit
  def edit
    @casting = Casting.find(params[:id])
    @manufacturers = Manufacturer.all
  end

  # POST /castings
  # POST /castings.xml
  def create
    @casting = Casting.new(params[:casting])

    respond_to do |format|
      if @casting.save
        format.html { redirect_to(@casting, :notice => 'Casting was successfully created.') }
        format.xml  { render :xml => @casting, :status => :created, :location => @casting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @casting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /castings/1
  # PUT /castings/1.xml
  def update
    @casting = Casting.find(params[:id])

    respond_to do |format|
      if @casting.update_attributes(params[:casting])
        format.html { redirect_to(@casting, :notice => 'Casting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @casting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /castings/1
  # DELETE /castings/1.xml
  def destroy
    @casting = Casting.find(params[:id])
    @casting.destroy

    respond_to do |format|
      format.html { redirect_to(castings_url) }
      format.xml  { head :ok }
    end
  end
end
