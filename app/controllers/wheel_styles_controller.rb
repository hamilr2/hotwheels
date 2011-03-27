class WheelStylesController < ApplicationController
  # GET /wheel_styles
  # GET /wheel_styles.xml
  def index
    @wheel_styles = WheelStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wheel_styles }
    end
  end

  # GET /wheel_styles/1
  # GET /wheel_styles/1.xml
  def show
    @wheel_style = WheelStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wheel_style }
    end
  end

  # GET /wheel_styles/new
  # GET /wheel_styles/new.xml
  def new
    @wheel_style = WheelStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wheel_style }
    end
  end

  # GET /wheel_styles/1/edit
  def edit
    @wheel_style = WheelStyle.find(params[:id])
  end

  # POST /wheel_styles
  # POST /wheel_styles.xml
  def create
    @wheel_style = WheelStyle.new(params[:wheel_style])

    respond_to do |format|
      if @wheel_style.save
        format.html { redirect_to(@wheel_style, :notice => 'Wheel style was successfully created.') }
        format.xml  { render :xml => @wheel_style, :status => :created, :location => @wheel_style }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wheel_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wheel_styles/1
  # PUT /wheel_styles/1.xml
  def update
    @wheel_style = WheelStyle.find(params[:id])

    respond_to do |format|
      if @wheel_style.update_attributes(params[:wheel_style])
        format.html { redirect_to(@wheel_style, :notice => 'Wheel style was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wheel_style.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wheel_styles/1
  # DELETE /wheel_styles/1.xml
  def destroy
    @wheel_style = WheelStyle.find(params[:id])
    @wheel_style.destroy

    respond_to do |format|
      format.html { redirect_to(wheel_styles_url) }
      format.xml  { head :ok }
    end
  end
end
